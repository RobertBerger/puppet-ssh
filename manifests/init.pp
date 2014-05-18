# Class: ssh
#
# This module manages ssh
#
# Parameters: none
#
# Actions: I want to enable X11 forwarding (ssh -X ...)
#
# Requires: see Modulefile
#
# Sample Usage:
#

class ssh {
  # X11Forwarding yes
  sshd_config { "X11Forwarding global":
  ensure => present,
  key    => "X11Forwarding",
  value  => "yes",
  }
  # X11UseLocalhost no
  sshd_config { "X11UseLocalhost global":
  ensure => present,
  key    => "X11UseLocalhost",
  value  => "no",
  }
  # X11DisplayOffset 10
  sshd_config { "X11DisplayOffset global":
  ensure => present,
  key    => "X11DisplayOffset",
  value  => "10",
  }
  # AllowTcpForwarding yes
  sshd_config { "AllowTcpForwarding global":
  ensure => present,
  key    => "AllowTcpForwarding",
  value  => "yes",
  }
  # XAuthLocation /usr/bin/xauth
  sshd_config { "XAuthLocation global":
  ensure => present,
  key    => "/usr/bin/xauth",
  value  => "yes",
  }
}
