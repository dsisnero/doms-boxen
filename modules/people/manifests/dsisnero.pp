class people::dsisnero {

  homebrew::tap{ 'homebrew/dupes':}

  package { 'homebrew/dupes/tcl-tk':
    require => Homebrew::Tap['homebrew/dupes']
  }
  

  git::config::global {
    'alias.co': value => 'checkout';
    'core.editor': value => 'emacs';

  }

  file {
    "/Users/${::boxen_user}/.emacs":
      content => '(load "~/.emacs24.d/init.el")'
  }

  repository {
    "/Users/${::boxen_user}/.emacs24.d":
      source => 'dsisnero/.emacs24.d'
  }


  repository {
    "/Users/${::boxen_user}/.hoe_template":
      source => 'dsisnero/.hoe_template'
  }
  


  include people::dsisnero::ruby
  

}

