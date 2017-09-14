# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'erb'
require 'json'
require 'fileutils'
require 'ms_rest_azure'

class ClientGenerator
  def initialize(metadata)
    @metadata = metadata
  end

  def generate
    list_of_gems = Dir.entries('../../management') - ['.' , '..']
    list_of_gems.each do |gem|
      if(gem == 'azure_mgmt_compute')
        library_location = "../../../management/#{gem}/lib"

        @client_file_name   = "#{library_location}/client.rb"
        @list_of_versions   = (Dir.entries("#{library_location}") - ['.', '..']).delete_if {|entry| not File.directory?"#{library_location}/#{entry}"}
        @namespace          = @metadata[gem]['namespace']

        require "#{library_location}/#{@list_of_versions[0]}/generated/#{gem}.rb"
        @management_client  = {}
        @models             = {}
        version             = 'Api_' + @list_of_versions[0].gsub('-', '_')
        @management_client['class_name'] = Module.const_get("#{@namespace}::#{version}").constants.select {|entry| entry.to_s.end_with?'ManagementClient'}[0].to_s
        @management_client['file_name']  = get_model_name(@management_client['class_name'])

        @list_of_versions.each do |version|
          require "#{library_location}/#{version}/generated/#{gem}.rb"
          version             = 'Api_' + version.gsub('-', '_')
          model_objects = Module.const_get("#{@namespace}::#{version}::Models")
          model_objects.constants.each do |const_name|
            @models[get_model_name(const_name.to_s)] = "\"#{@namespace}::\#{@version}::Models::#{const_name}\""
          end
        end

        create_client_file
        write_client_file
      end
    end
  end

  def get_model_name(model_name)
    model_name.gsub(/([a-z\d])([A-Z])/,'\1_\2').downcase
  end

  def create_client_file
    @client_file = File.new(@client_file_name, 'w')
  end

  def write_client_file
    @client_file.write(get_renderer(File.read('./res/templates/client_template.template')))
  end

  def get_renderer(template)
    renderer = ERB.new(template, 0, '-%>')
    renderer.result(get_binding)
  end

  def get_binding
    binding
  end
end