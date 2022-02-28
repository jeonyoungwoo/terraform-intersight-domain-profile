#Provide the name of Intersight Organization.
organization_name                       = "CIP"       ///조직변경 default -> CIP

#Provide name to be prefixed for all the policies of Domain Profile
name_prefix                             = "UCSX_Domain"     //변경

#Name of UCS Domain Profile
name_of_ucs_domain_profile              = "UCSX_Domain"     //변경


#Provide the FI details which is in IMM
#FI Model - UCS-FI-6454 / UCS-FI-64108
fi_model                                = "UCS-FI-6454"
#Serial Numbers
serial_number_of_fi-a                   = "FDO252805LX"           //변경
serial_number_of_fi-b                   = "FDO252805HV"           //변경

#FI Port 설정---------------------------------------------------------------------------Start

#Port Policy configuration for all the physical ports of the Fabric Interconnect - A
#Configure FC Ports
fc_port_id_start_on-fi-a                        = 1               //변경
fc_port_id_end_on-fi-a                          = 16               //변경 4->16
slot_id_of_switch_for_FC_Uplink_on-fi-a          = 1               //변경

#Cofigure Server Ports
list_of_server_ports_on-fi-a                    = [17,18]         //변경
slot_id_of_switch_for_server_ports_on-fi-a      = 1               //변경

#Configure Ethernet uplink port-channel on the collection of ports
list_of_ports_for_ethernet_uplink_on-fi-a                 = [43]      //변경
admin_speed_for_ethernet_uplink_port_channel_on-fi-a      = "Auto"    //변경
port_channel_id_for_ethernet_uplink_on-fi-a               = 16        //변경
slot_id_of_ports_for_ethernet_uplink_on-fi-a              = 1         //변경


#Configure FC uplink port-channel on the collection of ports
list_of_ports_for_fc_uplink_on-fi-a                       = [1]       //변경
admin_speed_for_fc_uplink_port_channel_on-fi-a            = "16Gbps"  //변경  16 ->8
port_channel_id_for_fc_uplink_on-fi-a                     = 1       //변경
correspnding_vsan_id_on-fi-a                              = 3101       //변경  vsan ID
slot_id_of_ports_for_fc_uplink_on-fi-a                    = 1         //변경



#Port Policy configuration for all the physical ports of the Fabric Interconnect - B
#Configure FC Ports
fc_port_id_start_on-fi-b                        = 1                   //변경
fc_port_id_end_on-fi-b                          = 16                   //변경
slot_id_of_switch_for_fc_ports_on-fi-b          = 1                   //변경

#Cofigure Server Ports
list_of_server_ports_on-fi-b                    = [17,18]             //변경
slot_id_of_switch_for_server_ports_on-fi-b      = 1                   //변경

#Configure Ethernet uplink port-channel on the collection of ports
list_of_ports_for_ethernet_uplink_on-fi-b                 = [43]
admin_speed_for_ethernet_uplink_port_channel_on-fi-b      = "Auto"
port_channel_id_for_ethernet_uplink_on-fi-b               = 16
slot_id_of_ports_for_ethernet_uplink_on-fi-b              = 1


#Configure FC uplink port-channel on the collection of ports
list_of_ports_for_fc_uplink_on-fi-b                       = [1]
admin_speed_for_fc_uplink_port_channel_on-fi-b            = "16Gbps"  //변경  16 ->8
port_channel_id_for_fc_uplink_on-fi-b                     = 2        //112->43
correspnding_vsan_id_on-fi-b                              = 3102      //변경  vsan ID
slot_id_of_ports_for_fc_uplink_on-fi-b                    = 2

#FI port 설정-----------------------------------------------------------------------------END

#Configuration details for all VLANs in Fabric Interconnects
#Specify the native vlan id
native_vlan = 1

#Specify the VLAN Name and VLAN ID like below
/*  --EXAMPLE--
vlan_details_for_fabric_interconnects = {
Native-VLAN     = 2
mgmt-oob        = 11
mgmt-inband     = 511
iSCSI-A         = 3010
iSCSI-B         = 3020
nfs             = 3050
}
*/

vlan_details_for_fabric_interconnects= {
        Native_VLAN = 1
        vlan_id1 = 20
        vlan_id2 = 21
        vlan_id3 = 22
        vlan_id4 = 23
        vlan_id5 = 24
        vlan_id6 = 25
        vlan_id7 = 26
        vlan_id8 = 27
        vlan_id9 = 28
        vlan_id10 = 29
}



#Policy for VSAN to be deployed on the Fabric Interconnect - A
name_of_vsan_on-fi-a                    = "VSAN-A"
fcoe_vlan_id_on-fi-a                    = 3101              //변경
correspnding_vsan-fcoe_id_on-fi-a       = 3101              //변경


#Policy for VSAN to be deployed on the Fabric Interconnect - B
name_of_vsan_on-fi-b                    = "VSAN-B"
fcoe_vlan_id_on-fi-b                    = 3102             //변경
correspnding_vsan-fcoe_id_on-fi-b       = 3102             //변경



#Policy to configure the NTP Servers
list_of_ntp_server                      = ["10.100.20.50"]    //변경
timezone                                = "Asia/Seoul"



#Update DNS settings
preferred_ipv4_dns_server               = "10.100.20.50"        //변경
alternate_ipv4_dns_server               = "8.8.8.8"             //변경



#Configure Quality of Service (QoS) for FIs
mtu_for_best_effort_class_of_service    = 1500           #9216 -> 1500 변경







