docker_image 'docker.artifactory.pnnl.gov/rabbitmq' do
  tag '3.6'
  action :pull
end
docker_container 'rabbitmq' do
  tag '3.6'
  image 'docker.artifactory.pnnl.gov/rabbitmq'
  container_name 'rabbitmq'
  env 'RABBITMQ_NODENAME=rabbitmq'
  privileged true
  action :run
end
