# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/Profile_2016_02_03/iothub_profile_2016_02_03_module_definition.rb'
require 'profiles/Profile_2016_02_03/modules/iothub_profile_module'
require 'profiles/utils/configurable'
require 'profiles/utils/default'

module Azure::Profiles::IotHubModule::Management::Profile_2016_02_03
  #
  # Client class for the Profile_2016_02_03 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :iothub

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.iothub = IotHub::IotHubClass.new(self, nil, nil)
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