import "adduser.pp"

class users
{
    include adduser
    adduser::add_user
    {
        "demo":
            username    => "demo",
            useruid     => "2000",
            userhome    => "demo",
            usershell   => "/bin/bash",
            groups      => "wheel",
    }
}

