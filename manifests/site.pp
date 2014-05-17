class base_cls {
  package {
    ["vim-enhanced"]:
      ensure => installed;
  }
}
# tell puppet on which client to run the class
node web {
  include base_cls,ntp,nginx
}
node db {
  include base_cls,ntp,mysql
}
