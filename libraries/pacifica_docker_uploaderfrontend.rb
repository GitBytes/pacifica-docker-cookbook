# Top-level of Pacifica Docker Cookbook library
module PacificaDockerCookbook
  # Resource Library Definitions
  module Resource
    require_relative 'pacifica_docker_base'
    require_relative 'helpers_uploader'
    # Class to deploy and manage a Pacifica Uploader Frontend Service Container
    class UploaderFrontend < PacificaDockerCookbook::Resource::Base
      include PacificaDockerCookbook::Helper::Uploader
      property :name, String, name_property: true
      property :service_name, String, default: 'uploader-django'
      property :docker_service_action, Array, default: [:create, :start]
      property :docker_image_repo, String, default: 'pacifica/uploader-frontend'
      property :docker_image_tag, String, default: '1.0.3'
      property :docker_image_action, Array, default: [:pull]
      property :docker_container_repo, String, default: 'pacifica/uploader-frontend'
      property :docker_container_action, Array, default: [:run]
      property :docker_container_tag, String, default: '1.0.3'
      resource_name :pacifica_docker_uploaderfrontend
    end
  end
end
