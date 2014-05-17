class nginx
{
    package {
        "nginx":
            ensure => installed,
    }

    file {
        "nginx.conf":
            mode => 644, owner => root, group => root,
                 ensure => present,
                 name    => "/etc/nginx/nginx.conf",
                 content => template("nginx/nginx.conf.erb"),
                 require => package["nginx"];
        "mysite.conf":
            mode => 644, owner => root, group => root,
                 ensure => present,
                 name    => "/etc/nginx/conf.d/mysite.conf",
                 content => template("nginx/mysite.conf.erb"),
                 require => package["nginx"];
    }

    service {
        "nginx":
            ensure => running,
                   enable => true,
                   hasrestart => true,
                   hasstatus => true,
                   require => Package["nginx"],
                   subscribe => File["nginx.conf"],
    }

}
