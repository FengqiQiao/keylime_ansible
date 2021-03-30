#! /bin/bash
echo "Bash version ${BASH_VERSION}"

for server_idx in {1..29}
do
  echo "${server_idx}"
  openstack server resize "keylime_ansible_agent_35-${server_idx}" --flavor m1.keylime
done