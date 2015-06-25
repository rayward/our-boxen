class projects::bigcommerce {
  include nodejs
  include vagrant
  include virtualbox

  boxen::project { 'bigcommerce':
    source  => 'bigcommerce/bigcommerce-app-vm',
    ruby    => '1.9.3'
  }
}
