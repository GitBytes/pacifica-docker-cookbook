#
# Cookbook Name:: pacifica_docker_test
# Spec:: remove
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'pacifica_docker_test::remove' do
  before do
    allow_any_instance_of(Chef::Recipe).to receive(:include_recipe).and_call_original
  end
  supported_platforms.each do |platform, versions|
    versions.each do |version|
      context "on an #{platform.capitalize}-#{version} box" do
        cached(:chef_run) do
          ChefSpec::ServerRunner.new(
            platform: platform, version: version
          ) do |_node, server|
          end.converge(described_recipe)
          runner = ChefSpec::ServerRunner.new(node_attributes.merge(settings).merge(step_into))
          runner.converge(described_recipe)
          runner
        end

        it 'Converges successfully' do
          expect { chef_run }.to_not raise_error
        end

        context 'Creates the following Pacifica Docker containers' do
          it 'removes the `archive interface` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `cartd frontend` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `cartd backend` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `ingest backend` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `ingest frontend` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `metadata` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `policy` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `proxy` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `reporting` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `uniqueid` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `upload status` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `uploader backend` service' do
            let(:step_into) do
              { step_into: ['archiveinterface'] }
            end
          end
          it 'removes the `uploader frontend` service' do
          end
        end
      end
    end
  end
end
