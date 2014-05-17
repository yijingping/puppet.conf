class python27 
{
    # install these pkgs for python27
    $packagelist = [
       "zlib-devel",
       "bzip2-devel",
       "openssl-devel",
       "ncurses-devel",
    ]
    package {
        $packagelist:
            ensure => installed,
    }
}
