name             'cookbook-updater'
maintainer       'Earth U'
maintainer_email 'iskitingbords@gmail.com'
license          'Apache License'
description      'Installs/Configures cookbook-updater'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
source_url       'https://github.com/nollieheel/cookbook-updater'
issues_url       'https://github.com/nollieheel/cookbook-updater/issues'
version          '0.1.1'

depends 'apt'

supports 'ubuntu', '>= 14.04'
