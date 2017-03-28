# PacificaDocker helper definitions
module PacificaDockerCookbook
  # Helpers
  module Helper
    # Base helpers
    module Base
      def example_create_def
        puts "I am the base create example for #{name}, HEED MY WORDS OF CREATION.."
      end

      def example_remove_def
        puts "I am the base remove example for #{name}, HEED MY WORDS OF OBLIVION.."
      end

      def pacifica_docker_service
        # Install and Handle Docker Service
        # docker_service "#{name}_docker_service" do
        docker_service 'default' do
          action docker_service_action
          docker_service_opts.each do |attr, value|
            send(attr, value)
          end
        end
      end

      def pacifica_docker_image
        docker_image "pacifica-#{service_name}-#{name}" do
          repo docker_image_repo
          tag docker_image_tag
          action docker_image_action
          docker_image_opts.each do |attr, value|
            send(attr, value)
          end
        end
      end

      def pacifica_docker_container
        docker_container "pacifica-#{service_name}-#{name}" do
          repo docker_container_repo
          tag docker_container_tag
          action docker_container_action
          docker_container_opts.each do |attr, value|
            send(attr, value)
          end
        end
      end
    end
  end
end
