# RPMBUILDER

## Introduction

The rpmbuilder module serves to quickly and painlessly create a host fully equiped to build
RPM packages. Mock is the central package building tool utilized in this module.

By default, standard mock configurations are installed for package building for Enterprise
Linux 4, 5 and 6, as well as Fedora 15 and higher.

The required 'puppet-module-mock' module provides configurations to build Puppet Labs RPM
packages for all of the previously stated distributions.

## Depenencies

puppet-module-epel

## Recommended Modules

puppet-module-mock
