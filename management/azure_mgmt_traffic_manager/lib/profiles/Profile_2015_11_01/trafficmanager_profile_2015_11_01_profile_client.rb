# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/Profile_2015_11_01/trafficmanager_profile_2015_11_01_module_definition.rb'
require 'profiles/Profile_2015_11_01/modules/trafficmanager_profile_module'
require 'profiles/utils/configurable'
require 'profiles/utils/default'

module Azure::Profiles::TrafficManagerModule::Management::Profile_2015_11_01
  #
  # Client class for the Profile_2015_11_01 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :trafficmanager

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.trafficmanager = TrafficManager::TrafficManagerClass.new(self, nil, nil)
    end

    def credentials
      if @credentials.nil?
        self.active_directory_settings ||= Azure::ARM::Default.active_directory_settings

        @credentials = MsRest::TokenCredentials.new(
                    MsRestAzure::ApplicationTokenProvider.new(
                        self.tenant_id, self.client_id, self.client_secret, self.active_directory_settings))
      end
      @credentials
    end
  end
end
