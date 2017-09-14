# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '2016-03-30/generated/azure_mgmt_compute'
require_relative '2016-04-30-preview/generated/azure_mgmt_compute'
require_relative '2017-01-31/generated/azure_mgmt_compute'
require_relative '2017-03-30/generated/azure_mgmt_compute'

module Azure::ARM::Compute
  class Client
    attr_accessor :compute_management_client

    def initialize(version, credentials = nil, base_url = nil, options = nil)
      @version = 'Api_' + version.gsub('-', '_')
      client_name = "Azure::ARM::Compute::#{@version}::ComputeManagementClient"
      self.compute_management_client = Object.const_get(client_name).new(credentials, base_url, options)
    end
  end
end
