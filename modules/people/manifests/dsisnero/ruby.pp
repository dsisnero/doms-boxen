class people::dsisnero::ruby {

  require 'ruby::global'

  ruby::version { '2.2.6':}

  validate_re($ruby::global::version, '^\S+')

  # ruby::version { '1.9.3-p547': }

  # ensure a gem is installed for all ruby versions
  ruby_gem { "bundler for ${ruby::global::version}":
    gem          => 'bundler',
    ruby_version => $ruby::global::version
  }

  ruby_gem { "oga for ${ruby::global::version}":
    gem => 'oga',
    ruby_version => $ruby::global::version
  }

  ruby_gem { "pry for ${ruby::global::version}":
    gem => 'pry',
    ruby_version => $ruby::global::version
  }
  


  ruby_gem { "asciidoctor for ${ruby::global::version}":
    gem          => 'asciidoctor',
    ruby_version => $ruby::global::version
  }

  ruby_gem { "foundation for ${ruby::global::version}":
    gem => 'foundation',
    ruby_version =>  $ruby::global::version
  }

  ruby_gem { "compass for ${ruby::global::version}":
    gem => 'compass',
    ruby_version => $ruby::global::version,
  }

  ruby_gem { "tk for ${ruby::global::version}":
    gem => 'tk',
    ruby_version => $ruby::global::version,
    require => Package['homebrew/dupes/tcl-tk'],
  }

  }
  
