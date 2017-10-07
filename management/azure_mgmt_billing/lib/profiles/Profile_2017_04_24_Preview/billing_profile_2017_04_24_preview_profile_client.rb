# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/profile_2017_04_24_preview/billing_profile_2017_04_24_preview_module_definition.rb'
require 'profiles/profile_2017_04_24_preview/modules/billing_profile_module'
require 'profiles/utils/configurable'
require 'profiles/utils/default'

module Azure::Profiles::BillingModule::Management::Profile_2017_04_24_Preview
  #
  # Client class for the Profile_2017_04_24_Preview profile SDK.
  #
  class Client
    include Azure::ARM::Configurable

    attr_accessor  :billing

    def initialize(options = {})
      if options.is_a?(Hash) && options.length == 0
        @options = setup_options
      else
        @options = options
      end

      reset!(options)

      self.billing = Billing::BillingClass.new(self)
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
