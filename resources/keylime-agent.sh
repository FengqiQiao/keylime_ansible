#!/bin/bash 

echo TPM2TOOLS_TCTI=tabrmd: > /root/.bash_profile
echo TPM2TOOLS_TCTI=tabrmd: > /root/.bashrc
source /root/.bash_profile
source /root/.bashrc

# run keylime_agent
keylime_agent
