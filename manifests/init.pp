# Class: ssh
#
# This module manages ssh
#
# Parameters: none
#
# Actions:
#
# Requires: see Modulefile
#
# Sample Usage:
#

class ssh {
  # enable X11Forwarding
  sshd_config { "X11Forwarding global":
  ensure => present,
  key    => "X11Forwarding",
  value  => "yes",
  }
  # don't use Localhost for X11
  sshd_config { "X11UseLocalhost global":
  ensure => present,
  key    => "X11UseLocalhost",
  value  => "no",
  }
}
