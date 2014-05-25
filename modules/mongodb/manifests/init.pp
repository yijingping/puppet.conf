class mongodb 
{
    # prepare for install
    package
    { yum:
        ensure => installed;
    }
    file
    { mongodb-server:
        name => '/etc/yum.repos.d/mongodb.repo',
        ensure => present,
        owner => root,
        group => root,
        mode  => 600,
        require => Package["yum"],
    }
    yumrepo
    { mongodb-server:
      descr   => 'MongoDB Repository',
      baseurl => 'http://downloads-distro.mongodb.org/repo/redhat/os/x86_64/',
      enabled => 1,
      gpgcheck => 0,
      require => File['mongodb-server'];
    }

    # installing
    $packagelist = [
        "mongodb-org-2.6.1",
        "mongodb-org-server-2.6.1",
        "mongodb-org-shell-2.6.1",
        "mongodb-org-mongos-2.6.1",
        "mongodb-org-tools-2.6.1"
    ]
    package {
        $packagelist:
            ensure => installed,
    }
    
    # keep service running 
    service {
        "mongod":
           ensure => running,
           enable => true,
           hasrestart => true,
           hasstatus => true,
           require => [
               Package["mongodb-org-2.6.1"],
               Package["mongodb-org-server-2.6.1"],
               Package["mongodb-org-shell-2.6.1"],
               Package["mongodb-org-mongos-2.6.1"],
               Package["mongodb-org-tools-2.6.1"]
           ]
    }
}
