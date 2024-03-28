# beacon_stopper

This role will run a command to fetch the state from a remote s3 bucket for use to run a node or for shadowforks.

## Requirements

Bash,s3cmd is required for running the script.

## Role Variables

Default variables are defined in [defaults/main.yaml](defaults/main.yaml)

## Example Playbook

Your playbook could look like this:

```yaml
- hosts: localhost
  become: true
  roles:
  - role: state_fetcher
```
