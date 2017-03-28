include_recipe 'yum-centos'
%w(
  alpha-uploader
  beta-uploader
  gamma-uploader
).each do |kitchen_uploader|
  pacifica_docker_uploaderbackend kitchen_uploader do
    action :create
  end
  pacifica_docker_uploaderfrontend kitchen_uploader do
    action :create
  end
end
