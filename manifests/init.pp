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
  sshd_config { "X11Forwarding global":
  ensure => present,
  key    => "X11Forwarding",
  value  => "yes",
  }
}
