# keylime_ansible
## There are 4 playbooks to seperately manage **agents**, **verifier**, **registrar** and **webapp**.
### 1. For Node Running Keylime_agent Service:
  - Installing keylime/wstpm, start all related service(swtpm, keylime_agent, keylime_ima_emulator) on agent node:
  ```
  ansible-playbook --tags start_with_installation start_agent
  ```
  - **Setting up agents configuration, start all related service(swtpm, keylime_agent, keylime_ima_emulator) on agent node:**
  ```
  ansible-playbook --tags start start_agent
  ```
  - Stop all related service on agents node:
  ```
  ansible-playbook --tags stop start_agent
  ```
  - Uninstall keylime service on agents node:
  ```
  ansible-playbook --tags uninstall start_agent
  ```
### 2. For Node Running keylime_verifier Service:
  - Installing keylime, start keylime_verifier service:
  ```
  ansible-playbook --tags start_with_installation start_verifier
  ```
  - **Setting up verifier configuration, start keylime_verifier service:**
  ```
  ansible-playbook --tags start start_verifier
  ```
  - Stop keylime_verifier service:
  ```
  ansible-playbook --tags stop start_verifier
  ```
  - Uninstall keylime service on verifier node:
  ```
  ansible-playbook --tags uninstall start_verifier
  ```
### 3. For Node Running keylime_registrar Service:
  - Installing keylime, start keylime_registrar service:
  ```
  ansible-playbook --tags start_with_installation start_registrar
  ```
  - **Setting up registrar configuration, start keylime_registrar service:**
  ```
  ansible-playbook --tags start start_registrar
  ```
  - Stop keylime_registrar service:
  ```
  ansible-playbook --tags stop start_registrar
  ```
  - Uninstall keylime service on registrar node:
  ```
  ansible-playbook --tags uninstall start_registrar
  ```
### 4. For Node Running keylime_webapp Service:
  - Installing keylime, start keylime_webapp service:
  ```
  ansible-playbook --tags start_with_installation start_webapp
  ```
  - **Setting up webapp configuration, start keylime_registrar service:**
  ```
  ansible-playbook --tags start start_webapp
  ```
  - Stop keylime_webapp service:
  ```
  ansible-playbook --tags stop start_webapp
  ```
  - Uninstall keylime service on webapp node:
  ```
  ansible-playbook --tags uninstall start_webapp
  ```
