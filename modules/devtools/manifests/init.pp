class devtools
{
    $packagelist = [
        "bison",
        "byacc",
        "cscope",
        "ctags",
        "cvs",
        "diffstat",
        "doxygen",
        "flex",
        "gcc",
        "gcc-c++",
        "gcc-gfortran",
        "gettext",
        "git",
        "indent",
        "intltool",
        "libtool",
        "patch",
        "patchutils",
        "rcs",
        "redhat-rpm-config",
        "rpm-build",
        "subversion",
        "swig",
        "systemtap",
    ]
    package {
        $packagelist:
            ensure => installed,
    }
}
