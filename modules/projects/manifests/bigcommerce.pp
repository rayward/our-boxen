class projects::bigcommerce {
  include homebrew
  include php
  include php::composer
  include nodejs
  include vagrant
  include virtualbox

  $repo_dir = "${boxen::config::srcdir}/bigcommerce"

  boxen::project { 'bigcommerce':
    source  => 'bigcommerce/bigcommerce-app-vm',
    dir     => $repo_dir,
    ruby    => '1.9.3'
  }

  php::local { $repo_dir:
    version => '5.6',
    require => Boxen::Project['bigcommerce']
  }
}
