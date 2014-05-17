# tell puppet on which client to run the class
node web {
  include base,devtools,nginx,ssh,sudo,users,python27
}
node db {
  include base,mysql,ssh,sudo,users
}
