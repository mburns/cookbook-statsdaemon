name             'statsdaemon-bitly'
maintainer       'Michael Burns'
maintainer_email 'michael@mirwin.net'
license          'MIT'
description      'Installs statsdaemon (bitly)'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '1.0.4'

source_url 'https://github.com/mburns/cookbook-statsdaemon-bitly' if respond_to?(:source_url)
issues_url 'https://github.com/mburns/cookbook-statsdaemon-bitly/issues' if respond_to?(:issues_url)

recipe 'default', 'Installs statsdaemon.'

supports 'debian'
supports 'ubuntu'

depends 'golang'
