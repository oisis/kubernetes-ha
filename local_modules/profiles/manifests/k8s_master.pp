# -*- mode: puppet -*-
# vi: set ft=puppet
#
# === Author
# OiSiS (https://github.com/oisis/)
#
class profiles::k8s_master (){
  include ::profiles::etcd_key
  include ::profiles::flannel
  include ::profiles::docker
  include ::profiles::kubernetes

  Class['::profiles::etcd_key'] ->
  Class['::profiles::docker']   ->
  Class['::profiles::flannel']  ->
  Class['::profiles::kubernetes']
}
