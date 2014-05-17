class ntp 
{ 
    package
    { 
        "ntpdate":
            ensure => installed,
    }
    cron
    { ntpdate:
        command => "/usr/sbin/ntpdate pool.ntp.org",
                user => root,
                hour => 0,
                minute => 0,
                require => Package["ntpdate"];
    }
}
