name             'statsdaemon-bitly'
maintainer       'Olivier Dolbeau'
maintainer_email 'odolbeau@gmail.com'
license          'MIT'
description      'Installs statsdaemon (bitly)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.2'

recipe 'default', 'Installs statsdaemon.'

supports 'debian'
supports 'ubuntu'

depends 'golang'
