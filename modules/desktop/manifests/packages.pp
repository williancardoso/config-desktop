class desktop::packages (

  $install = undef,

){

  if $install {

    package { $install:
      ensure  => installed,
      require => File['/etc/yum.repos.d'],
    }
  
  }
}
