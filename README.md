# keylime_ansible
 There are 4 playbooks to seperately manage **agents**, **verifier**, **registrar** and **webapp**. \
 *Recommended service start order: registrar -> agent -> verifier -> webapp*
## 1. For Node Running Keylime_agent Service:
  - Installing keylime/swtpm, start all related service(swtpm, keylime_agent, keylime_ima_emulator) on agent node:
  ```
  ansible-playbook --tags start_with_installation keylime_agent.yml
  ```
  - **Setting up agents configuration, start all related service(swtpm, keylime_agent, keylime_ima_emulator) on agent node:**
  ```
  ansible-playbook --tags start keylime_agent.yml
  ```
  - Stop all related service on agents node:
  ```
  ansible-playbook --tags stop keylime_agent.yml
  ```
  - Uninstall keylime service on agents node:
  ```
  ansible-playbook --tags uninstall keylime_agent.yml
  ```
## 2. For Node Running keylime_verifier Service:
  - Installing keylime, start keylime_verifier service:
  ```
  ansible-playbook --tags start_with_installation keylime_verifier.yml
  ```
  - **Setting up verifier configuration, start keylime_verifier service:**
  ```
  ansible-playbook --tags start keylime_verifier.yml
  ```
  - Stop keylime_verifier service:
  ```
  ansible-playbook --tags stop keylime_verifier.yml
  ```
  - Uninstall keylime service on verifier node:
  ```
  ansible-playbook --tags uninstall keylime_verifier.yml
  ```
## 3. For Node Running keylime_registrar Service:
  - Installing keylime, start keylime_registrar service:
  ```
  ansible-playbook --tags start_with_installation keylime_registrar.yml
  ```
  - **Setting up registrar configuration, start keylime_registrar service:**
  ```
  ansible-playbook --tags start keylime_registrar.yml
  ```
  - Stop keylime_registrar service:
  ```
  ansible-playbook --tags stop keylime_registrar.yml
  ```
  - Uninstall keylime service on registrar node:
  ```
  ansible-playbook --tags uninstall keylime_registrar.yml
  ```
## 4. For Node Running keylime_webapp Service:
  - Installing keylime, start keylime_webapp service:
  ```
  ansible-playbook --tags start_with_installation keylime_webapp.yml
  ```
  - **Setting up webapp configuration, start keylime_registrar service:**
  ```
  ansible-playbook --tags start keylime_webapp.yml
  ```
  - Stop keylime_webapp service:
  ```
  ansible-playbook --tags stop keylime_webapp.yml
  ```
  - Uninstall keylime service on webapp node:
  ```
  ansible-playbook --tags uninstall keylime_webapp.yml
  ```
