

class desktop::repo (


){

  file {'/etc/yum.repos.d':
    ensure  => directory,
    source  => 'puppet:///modules/desktop/repo/',
    recurse => true,
  }


}
