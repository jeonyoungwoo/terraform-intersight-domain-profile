locals {
  port_split = length(
    regexall("-", var.port_list)) > 0 ? tolist(
    split(",", var.port_list)
  ) : length(regexall(",", var.port_list)) > 0 ? tolist(split(",", var.port_list)) : [var.port_list]
  port_lists = length(regexall("(,|-)", jsonencode(var.port_list))) > 0 ? flatten(
    [for s in local.port_split : length(regexall("-", s)) > 0 ? [
      for v in range(tonumber(element(split("-", s), 0)), (tonumber(element(split("-", s), 1)) + 1)) : tonumber(v)] : [s]
  ]) : local.port_split
  port_list = toset(local.port_lists)
}

#________________________________________________________________________________________________
#
# Intersight Port Policy - Port Role - Appliance
# GUI Location: Policies > Create Policy > Port > Port Roles > Configure > Port Role - Appliance
#________________________________________________________________________________________________

resource "intersight_fabric_appliance_role" "port_role" {
  for_each          = local.port_list
  admin_speed       = var.admin_speed
  aggregate_port_id = var.breakout_port_id
  fec               = var.fec
  mode              = var.mode
  port_id           = each.value
  priority          = var.priority
  slot_id           = var.slot_id
  port_policy {
    moid = var.port_policy_moid
  }
  dynamic "eth_network_control_policy" {
    for_each = var.ethernet_network_control_policy_moid
    content {
      moid = eth_network_control_policy.value
    }
  }
  dynamic "eth_network_group_policy" {
    for_each = var.ethernet_network_group_policy_moid
    content {
      moid = eth_network_group_policy.value
    }
  }
  dynamic "tags" {
    for_each = var.tags
    content {
      key   = tags.value.key
      value = tags.value.value
    }
  }
}
