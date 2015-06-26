class projects::bigcommerce {
  include nodejs
  include virtualbox

  class { 'vagrant':
    version => '1.7.1'
  }

  boxen::project { 'bigcommerce':
    source  => 'bigcommerce/bigcommerce-app-vm',
    ruby    => '1.9.3'
  }
}
