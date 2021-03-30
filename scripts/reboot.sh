#! /bin/bash

declare -a instance_ip_addrs=('keylime_ansible_agent_10' 'keylime_ansible_agent_12' 'keylime_ansible_agent_11' 'keylime_ansible_agent_13' 'keylime_ansible_agent_14' 'keylime_ansible_agent_15' 'keylime_ansible_agent_16' 'keylime_ansible_agent_17' 'keylime_ansible_agent_18' 'keylime_ansible_agent_19' 'keylime_ansible_agent_20' 'keylime_ansible_agent_21' 'keylime_ansible_agent_22' 'keylime_ansible_agent_23')

for ip_addr in "${instance_ip_addrs[@]}"
do
  openstack server reboot --soft "${ip_addr}"
done