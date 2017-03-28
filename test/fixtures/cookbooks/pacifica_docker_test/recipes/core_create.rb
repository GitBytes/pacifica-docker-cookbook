include_recipe 'yum-centos'

pacifica_docker_archiveinterface 'archiveinterface' do
  action :create
end
pacifica_docker_cartbackend 'cartbackend' do
  action :create
end
pacifica_docker_cartfrontend 'cartfrontend' do
  action :create
end
pacifica_docker_ingestbackend 'ingestbackend' do
  action :create
end
pacifica_docker_ingestfrontend 'ingestfrontend' do
  action :create
end
pacifica_docker_metadata 'metadata' do
  action :create
end
pacifica_docker_policy 'policy' do
  action :create
end
pacifica_docker_proxy 'proxy' do
  action :create
end
pacifica_docker_reporting 'reporting' do
  action :create
end
pacifica_docker_uniqueid 'uniqueid' do
  action :create
end
pacifica_docker_status 'status' do
  action :create
end
