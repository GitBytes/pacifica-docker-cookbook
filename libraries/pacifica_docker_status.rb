# Top-level of Pacifica Docker Cookbook library
module PacificaDockerCookbook
  # Resource Library Definitions
  module Resource
    require_relative 'pacifica_docker_base'
    require_relative 'helpers_base'
    require_relative 'helpers_core'
    # Class to deploy and manage a Pacifica Upload Status Service Container
    class Status < PacificaDockerCookbook::Resource::Base
      include PacificaDockerCookbook::Helper::Base
      include PacificaDockerCookbook::Helper::Core
      property :name, String, name_property: true
      property :docker_service_action, String, default: '[:create, :start]'
      property :docker_service_opts, Hash, default: lazy {}
      property :docker_image_repo, String, default: 'pacifica/status'
      property :docker_image_action, String, default: '[:pull]'
      property :docker_image_opts, Hash, default: lazy {}
      property :docker_container_repo, String, default: 'status'
      property :docker_container_action, String, default: '[:run]'
      property :docker_container_opts, Hash, default: lazy {}
      resource_name :pacifica_docker_status
    end
  end
end
