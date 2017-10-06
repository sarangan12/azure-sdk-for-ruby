# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/Profile_2016_12_01/recoveryservicesbackup_profile_2016_12_01_module_definition.rb'
require 'profiles/Profile_2016_12_01/modules/recoveryservicesbackup_profile_module'
require 'profiles/utils/configurable'
require 'profiles/utils/default'

module Azure::Profiles::RecoveryServicesBackupModule::Management::Profile_2016_12_01
  #
  # Client class for the Profile_2016_12_01 profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :recoveryservicesbackup

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.recoveryservicesbackup = RecoveryServicesBackup::RecoveryServicesBackupClass.new(self, nil, nil)
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