class projects::bigcommerce {
  include homebrew
  include php
  include php::composer
  include nodejs
  include vagrant
  include virtualbox

  boxen::project { 'bigcommerce':
    source  => 'bigcommerce/bigcommerce-app-vm',
    ruby    => '1.9.3',
    php     => '5.6'
  }
}
