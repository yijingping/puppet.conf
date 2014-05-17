class sudo
{
	package
	{ sudo:
	  ensure => present,
	}
	file
	{
		"/etc/sudoers":
		ensure	=> present,
		mode	=> 440,
		owner	=> root,
		group	=> root,
		content => template("sudo/centos_sudoer.erb"),
		require => package["sudo"];
	}
}
