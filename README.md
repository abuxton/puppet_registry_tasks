
# Puppet Windows Registry Tasks and plans

Using the learnings from Puppet Bolt Task and Plans lab (https://github.com/puppetlabs/tasks-hands-on-lab) impliment demonstration of Puppet Apply task to installmanipulate windows registry and associated tasks

#### Table of Contents

- [Puppet Windows Registry Tasks and plans](#puppet-windows-registry-tasks-and-plans)
      - [Table of Contents](#table-of-contents)
  - [Description](#description)
  - [Setup](#setup)
    - [Setup Requirements **OPTIONAL**](#setup-requirements-optional)
    - [Beginning with puppet_registry_tasks](#beginning-with-puppetregistrytasks)
  - [Usage](#usage)
  - [Limitations](#limitations)

## Description

Utilize the following modules and their dependencies 
* mod 'puppetlabs-stdlib'#, '4.13.1' #install latest
* mod 'puppetlabs-powershell', '2.3.0'
* mod 'puppetlabs-registry', '2.1.0


## Setup




### Setup Requirements **OPTIONAL**

Install Bolt and create project folder as documented

* https://puppet.com/docs/bolt/latest/bolt_installing.html
* https://puppet.com/docs/bolt/latest/bolt_configuration_options.html
* https://puppet.com/docs/bolt/latest/inventory_file.html

### Beginning with puppet_registry_tasks

 Clone the module to a host OS with Bolt installed, review available tasks and plans.

* cd ./modulefolder
* bolt plan show --modulepath=./
* bolt task show --modulepath=./

## Usage

<TODO>


## Limitations

Only tested against Windows Powershell, and not any other Powershell deployment

