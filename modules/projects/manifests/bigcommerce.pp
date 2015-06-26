class projects::bigcommerce {
  include nodejs
  include virtualbox

  class { 'vagrant':
    version => '1.7.1'
  }

  $ruby_version = '1.9.3'
  $node_version = 'v0.12'

  ruby_gem { "bundler for ${ruby_version}":
    gem          => 'bundler',
    version      => '~> 1.8',
    ruby_version => $ruby_version,
    require      => Boxen::Project['bigcommerce']
  }

  nodejs::module { 'bower':
    node_version => $node_version,
    require      => Boxen::Project['bigcommerce']
  }

  boxen::project { 'bigcommerce':
    source  => 'bigcommerce/bigcommerce-app-vm',
    ruby    => $ruby_version
  }
}
