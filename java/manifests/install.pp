#Install Java on the RHEL/CentOS Servers

class install {
  package { 'java':
    ensure => 'installed'
  }
}
