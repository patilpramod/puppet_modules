# Class: name
#
#
class tomcat::install {
  package { ['tomcat', 'tomcat-webapps']:
    ensure => 'present'
  }
}
