define users::managed_user (
$home_base = "/home",
$group = $title,
) {

  File{
    owner=> $title,
    group => $title,
    mode=> '0755',
  }

  user { $title:
  ensure => present,
  }

  file { "$home_base/${title}":
  ensure => directory,
  owner => $title,
  group => $group,
  }
}
