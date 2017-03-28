# Top-level of Pacifica Docker Cookbook library
module PacificaDockerCookbook
  # Resource Library Definitions
  module Resource
    # require 'singleton'
    require_relative 'helpers_base'
    require_relative 'helpers_core'
    # Base class with shared actions across all other sub resources
    class Base < Chef::Resource
      # include Singleton
      include PacificaDockerCookbook::Helper::Base
      property :name, String, name_property: true
      property :service_name, String, required: true
      property :docker_service_action, Array, default: [:create, :start]
      property :docker_service_opts, Hash, default: lazy { {} }
      property :docker_image_repo, String, required: true
      property :docker_image_tag, String, required: true
      property :docker_image_action, Array, default: [:pull]
      property :docker_image_opts, Hash, default: lazy { {} }
      property :docker_container_repo, String, required: true
      property :docker_container_tag, String, required: true
      property :docker_container_action, Array, default: [:run]
      property :docker_container_opts, Hash, default: lazy { {} }
      default_action :create

      # def primary_deploy_actions
      action :create do
        extend PacificaDockerCookbook::Helper::Base
        include_recipe 'chef-sugar'
        example_create_def
        pacifica_docker_service
        pacifica_docker_image
        pacifica_docker_container
      end
    end
  end
end
