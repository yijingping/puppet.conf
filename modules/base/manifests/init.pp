import "resolv.pp"
import "cron.pp"

class base {
	include anjuke::resolv
	include anjuke::cron
    $packagelist = [ ]
    $serlist = [ ]
    package
    { 
        $packagelist:
            ensure => absent,
    }
    service
    { 
        $serlist:
            ensure => stopped,
            enable => false,
    }

	$userlist = [ ]

	$grouplist = [ ]

	user
	{ $userlist:
	  ensure => absent,
	}
	group
	{ $grouplist:
	  ensure => absent,
	}
}
