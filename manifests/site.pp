node web {
  include base,ssh,sudo,users,devtools,nginx,python27
}
node db {
  include base,ssh,sudo,users,mysql,mongodb
}
