name 'pacifica-docker'
maintainer 'David Brown'
maintainer_email 'dmlb2000@gmail.com'
license 'Apache v2.0'
description 'Installs/Configures pacifica'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
if respond_to?(:issues_url)
  issues_url 'https://github.com/pacifica/pacifica-docker-cookbook/issues'
end
if respond_to?(:source_url)
  source_url 'https://github.com/pacifica/pacifica-docker-cookbook'
end
version '0.0.1'

depends 'chef-sugar'
depends 'docker'
