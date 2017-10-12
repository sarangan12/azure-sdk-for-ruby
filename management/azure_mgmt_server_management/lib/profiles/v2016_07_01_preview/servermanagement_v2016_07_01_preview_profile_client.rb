# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/v2016_07_01_preview/servermanagement_module_definition'
require 'profiles/v2016_07_01_preview/modules/servermanagement_profile_module'
require 'profiles/common/configurable'
require 'profiles/common/default'

module Azure::ServerManagement::Profiles::V2016_07_01_Preview::Mgmt
  #
  # Client class for the V2016_07_01_Preview profile SDK.
  #
  class Client < ServerManagementClass
    include Azure::ARM::Configurable


    def initialize(options = {})
      super(options)
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