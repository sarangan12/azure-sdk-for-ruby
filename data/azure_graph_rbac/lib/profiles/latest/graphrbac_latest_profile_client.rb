# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'profiles/latest/graphrbac_module_definition'
require 'profiles/latest/modules/graphrbac_profile_module'

module Azure::GraphRbac::Profiles::Latest
  #
  # Client class for the Latest profile SDK.
  #
  class Client < GraphRbacDataClass
    include MsRestAzure::Common::Configurable

    #
    # Initializes a new instance of the Client class.
    # @param options [Hash] hash of client options.
    #    options = {
    #      tenant_id: 'YOUR TENANT ID',
    #      client_id: 'YOUR CLIENT ID',
    #      client_secret: 'YOUR CLIENT SECRET',
    #      subscription_id: 'YOUR SUBSCRIPTION ID',
    #      credentials: credentials
    #    }
    #   'credentials' are optional and if not passed in the hash, will be obtained
    #   from MsRest::TokenCredentials using MsRestAzure::ApplicationTokenProvider.
    #
    def initialize(options = {})
      super(options)
    end

  end
end
