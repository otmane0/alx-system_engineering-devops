#!/usr/bin/env bash
# Ensure the ~/.ssh directory exists
file { '/home/vagrant/.ssh':
  ensure => directory,
  owner  => 'vagrant',
  group  => 'vagrant',
  mode   => '0700'}

# Ensure the ~/.ssh/config file exists
file { '/home/vagrant/.ssh/config':
  ensure  => file,
  owner   => 'vagrant',
  group   => 'vagrant',
  mode    => '0600',
  replace => true}

# Add the IdentityFile line to the SSH config
file_line { 'Declare identity file':
  ensure => present,
  path   => '/home/vagrant/.ssh/config',
  line   => '    IdentityFile ~/.ssh/school',
  match  => '^    IdentityFile'}

# Add the PasswordAuthentication line to the SSH config
file_line { 'Turn off passwd auth':
  ensure => present,
  path   => '/home/vagrant/.ssh/config',
  line   => '    PasswordAuthentication no',
  match  => '^    PasswordAuthentication'}
