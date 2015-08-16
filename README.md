# rentabiliweb-ladvd ![License badge][license-img] [![Puppet badge][puppet-img]][puppet-url]

#### Table of Contents

1. [Overview](#overview)
2. [Module Description](#module-description)
3. [Setup](#setup)
4. [Usage](#usage)
    * [Install](#install)
    * [Uninstall](#uninstall)
5. [Development](#development)

## Overview

The  rentabiliweb-ladvd module  enables you  to install,  deploy,  and configure
ladvd.

## Module Description

Ladvd is a lldp  / cdp / edp / fdp / ndp sender  for Unix. Ladvd uses link-layer
advertisements  to  inform  switches  about connected  hosts,  which  simplifies
Ethernet switch  management. It  does this by  forking into a  privileged parent
which handles  all raw sockets (and  certain ioctls), and  an unprivileged child
which  creates and  parses all  packets. Every  30 seconds  the  child generates
advertisement frames  reflecting the  current system state.  Interfaces (bridge,
bonding, wireless), capabilities  (bridging, forwarding, wireless) and addresses
(IPv4, IPv6)  are detected dynamically.  Secondly ladvd can listen  for incoming
frames and  utilize these for  various features (protocol  auto-enable, logging,
interface descriptions).

https://github.com/sspans/ladvd

## Setup

## Usage

### Install

### Uninstall

## Development

Rentabiliweb  modules on  the  Puppet  Forge are  open  projects, and  community
contributions are  essential for keeping  them great.  We can’t access  the huge
number  of   platforms  and  myriad   of  hardware,  software,   and  deployment
configurations that  Puppet is intended to  serve so feel free  to contribute on
GitHub.

Thanks https://github.com/puppetlabs/ for help to write this README :)

```
    ╚⊙ ⊙╝
  ╚═(███)═╝
 ╚═(███)═╝
╚═(███)═╝
 ╚═(███)═╝
  ╚═(███)═╝
   ╚═(███)═╝
```

[license-img]: https://img.shields.io/badge/license-ISC-blue.svg "License"
[puppet-img]: https://img.shields.io/puppetforge/dt/rentabiliweb/ladvd.svg "Puppet Forge"
[puppet-url]: https://forge.puppetlabs.com/rentabiliweb/ladvd "Puppet Forge"