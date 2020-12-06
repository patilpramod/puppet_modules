#Install Java on the RHEL/CentOS Servers

class java::install {
  package { 'java':
    ensure => 'installed'
  }
}
