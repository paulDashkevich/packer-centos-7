# Packer Example - CentOS 7 mininal using ansible
This repository contains an example of creating a template using Packer and VirtualBox using ansible

**Current CentOS Version Used: 7.3 (1611)**

This example build configuration installs and configures CentOS 7 x86_64, and then generates a Vagrant box files, for:
- VirtualBox

## Requirements
The following software must be installed/present on your local machine before you can use Packer to build the Vagrant box file:
- Packer
- Vagrant
- VirtualBox
- Ansible

## Usage
Make sure all the required software (listed above) is installed, then cd to the directory containing this README.md file, and run:

```sh
packer.io build centos.json
```

## License
MIT license.