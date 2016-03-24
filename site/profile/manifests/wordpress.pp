class profile::wordpress {



#mysql
class { '::mysql::server':
  root_password           => 'strongpassword',
}

#apache
class { 'apache': }

#php

#wordpress
class { 'wordpress': }
 # TODO

}
