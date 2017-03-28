#
# Cookbook Name:: pacifica_docker_test
# Spec:: create
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'pacifica_docker_test::create' do
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
        end

        it 'Converges successfully' do
          expect { chef_run }.to_not raise_error
        end

        context 'Creates the following Pacifica Docker containers' do
          it 'creates the `archive interface` service' do
          end
          it 'creates the `cartd frontend` service' do
          end
          it 'creates the `cartd backend` service' do
          end
          it 'creates the `ingest backend` service' do
          end
          it 'creates the `ingest frontend` service' do
          end
          it 'creates the `metadata` service' do
          end
          it 'creates the `policy` service' do
          end
          it 'creates the `proxy` service' do
          end
          it 'creates the `reporting` service' do
          end
          it 'creates the `uniqueid` service' do
          end
          it 'creates the `upload status` service' do
          end
          it 'creates the `uploader backend` service' do
          end
          it 'creates the `uploader frontend` service' do
          end
        end
      end
    end
  end
end
