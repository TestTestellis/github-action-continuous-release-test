<img height="150" src="docs/images/homelab.png"/>

Test

# GitHub action continuous release test

Hi

[![Main](https://github.com/AkiKanellis/github-action-continuous-release-test/actions/workflows/on-main-push.yml/badge.svg)](https://github.com/AkiKanellis/github-action-continuous-release-test/actions/workflows/on-main-push.yml)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

My personal ansible setup for my workstations and servers.

## Building

### Prerequisites

Make sure you have the following installed:

* [Python 3](https://www.python.org/downloads/)
* [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
* [Vagrant](https://www.vagrantup.com/docs/installation)

Then install the Python requirements:

```shell
pip install -r requirements.txt
```

### Linting

Linting will run `yamllint` and `ansible-lint`:

```shell
molecule lint
```

### Building

Building creates the VMs and runs the playbook.

```shell
molecule converge
```

### Testing

Testing will lint, create the VMs, run the playbook and destroy the VMs.

```shell
molecule test
```
