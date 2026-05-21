# ansible-osint

Ansible playbooks that prepare a cloud instance for OSINT tasks, run the tools,
and collect their output.

## Requirements

- Ansible installed locally (run the playbooks from wherever you have it)
- SSH access to the target host as `root`

## Bootstrap a target

Installs the prerequisites Ansible needs on the target:

```sh
ansible-playbook -i <IP>, bootstrap.yml
```

## Run the OSINT playbook

```sh
ansible-playbook -i <IP>, \
  -e 'TARGET=<website.tld> HUNTER_API_KEY=<key> SECURITYTRAILS_API_KEY=<key>' \
  osint.yml
```

API keys are passed as `-e` extra-vars and rendered into the target's
`api-keys.yaml` at runtime — never commit them. Supported variables (all
optional, default to empty):

- `HUNTER_API_KEY`
- `SECURITYTRAILS_API_KEY`
- `INTELX_API_KEY`
- `SHODAN_API_KEY`
- `BING_API_KEY`

## Output

Tool output is fetched back to `output/<TARGET>/`.
