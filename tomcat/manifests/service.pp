# Class: tomcat::service {"tompcat"}
#
class tomcat::service {
  service {"tomcat":
    ensure => running,
  }
}
