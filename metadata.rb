name             'statsdaemon'
maintainer       'Olivier Dolbeau'
maintainer_email 'odolbeau@gmail.com'
license          'MIT'
description      'Installs statsdaemon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.1'

recipe 'statsdaemon', 'Installs statsdaemon.'

supports 'debian'
supports 'ubuntu'

depends 'golang'
