name             'statsdaemon'
maintainer       'Olivier Dolbeau'
maintainer_email 'odolbeau@gmail.com'
license          'Apache 2.0'
description      'Installs statsdaemon'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

recipe 'golang', 'Installs statsdaemon.'

supports 'debian'
supports 'ubuntu'

depends 'golang'
