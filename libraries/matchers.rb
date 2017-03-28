# pacifica-docker matchers for unit testing
if defined?(ChefSpec)
  # Core Services
  def create_pacifica_docker_archiveinterface(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:pacifica_docker_archiveinterface, :create, resource_name)
  end

  def remove_pacifica_docker_archiveinterface(resource_name)
    ChefSpec::Matchers::ResourceMatcher.new(:pacifica_docker_archiveinterface, :remove, resource_name)
  end
end
