sonarqube-docker
==============

Ansible role to install and configure dockerized Sonarqube stack.

## Requirements

- docker engine
- docker-compose

You may be interested in [wunzeco.docker]


## Example

```
- hosts: mydockerhost

  roles:
    - wunzeco.sonarqube-docker
```


## Testing

To run this role's integration tests

```
kitchen test
```


## Dependencies

none

[wunzeco.docker]: https://github.com/wunzeco/ansible-docker
