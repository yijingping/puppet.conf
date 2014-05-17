class anjuke::cron
{ 
	package
	{ 
        "crontabs":
            ensure => installed,
	}
	service
	{
        "crond":
            ensure => running,
            enable => true,
            require => Package["crontabs"];
	}
    cron
    { 
        "ntpdate":
            command => "/usr/sbin/ntpdate pool.ntp.org",
            user => root,
            hour => 1,
            minute => 0,
            require => Package["crontabs"];
    }
}
