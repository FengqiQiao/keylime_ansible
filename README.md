# keylime_ansible

There are 4 playbooks to seperately manage **agents**, **verifier**, **registrar** and **webapp**. \
 _Recommended service start order: registrar -> agent -> verifier -> webapp_

## 1. To Run keylime_agent Service:

- Install keylime, swtpm, and swtpm's dependencies:

```
ansible-playbook --tags install_all keylime_agent.yml
```

- Start dependencies (swtpm, keylime_ima_emulator):

```
ansible-playbook --tags start_dependencies keylime_agent.yml
```

- Start keylime_agent:

```
ansible-playbook --tags start_agent keylime_agent.yml
```

- Stop everything:

```
ansible-playbook --tags stop_all keylime_agent.yml
```

- Uninstall keylime:

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

The recommended order of running keylime_webapp: install keylime -> run verifier -> kill verifier -> configurate keylime_webapp -> run keylime_webapp -> stop keylime_webapp

- Install keylime

```
ansible-playbook --tags install_keylime keylime_webapp.yml
```

- Run keylime_verifier

```
ansible-playbook --tags run_verifier keylime_webapp.yml
```

- Kill keylime_verifier

```
ansible-playbook --tags kill_verifier keylime_webapp.yml
```

- Configurate keylime_webapp

```
ansible-playbook --tags config_webapp keylime_webapp.yml
```

- Start webapp

```
ansible-playbook --tags start_webapp keylime_webapp.yml
```

- Stop keylime_webapp service:

```
ansible-playbook --tags stop keylime_webapp.yml
```

- Uninstall keylime service on webapp node:

```
ansible-playbook --tags uninstall keylime_webapp.yml
```
