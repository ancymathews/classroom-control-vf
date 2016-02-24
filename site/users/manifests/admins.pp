class users::admins {
users::managed_user { 'joe': 
home_base = "/tmp",
}
users::managed_user { 'alice':
home_base = "/tmp",
group => 'staff',
}
users::managed_user { 'aaron':
home_base = "/tmp",
group => 'staff',
}

group { 'staff':
ensure => present,
}
