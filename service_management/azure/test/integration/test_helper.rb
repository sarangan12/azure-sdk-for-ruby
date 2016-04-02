#-------------------------------------------------------------------------
# # Copyright (c) Microsoft and contributors. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#   http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#--------------------------------------------------------------------------
require 'test_helper'
require 'azure'
require 'vcr'

if (ENV['TRAVIS_ASM_INTEG_RECORDED'].nil? || ENV['TRAVIS_ASM_INTEG_RECORDED'] == false) then
  Azure.configure do |config|
    config.storage_access_key       = ENV.fetch('AZURE_STORAGE_ACCESS_KEY')
    config.storage_account_name     = ENV.fetch('AZURE_STORAGE_ACCOUNT')
    config.sb_namespace             = ENV.fetch('AZURE_SERVICEBUS_NAMESPACE')
    config.sb_access_key            = ENV.fetch('AZURE_SERVICEBUS_ACCESS_KEY')
    config.management_certificate   = ENV.fetch('AZURE_MANAGEMENT_CERTIFICATE')
    config.subscription_id          = ENV.fetch('AZURE_SUBSCRIPTION_ID')
  end
end

util = Class.new.extend(Azure::Core::Utility)

StorageAccountName = util.random_string('storagetest',10)

VCR.configure do |config|
  config.default_cassette_options = {:record => :once}
  config.cassette_library_dir = "vcr/vcr_cassettes"
  config.hook_into :faraday
  config.filter_sensitive_data('<SUBSCRIPTION_ID>') { Azure.subscription_id }
  config.filter_sensitive_data('<STORAGE_ACCESS_KEY>') { Azure.storage_access_key }
  config.filter_sensitive_data('<STORAGE_ACCOUNT_NAME>') { Azure.storage_account_name }
  config.filter_sensitive_data('<SB_NAMESPACE>') { Azure.sb_namespace }
  config.filter_sensitive_data('<SB_ACCESS_KEY>') { Azure.sb_access_key }
  config.filter_sensitive_data('<MANAGEMENT_CERTIFICATE>') { Azure.management_certificate }
end

VCR.use_cassette("support/VirtualMachineImageManagementService") do
  Images = Azure::VirtualMachineImageManagementService.new.list_virtual_machine_images
end

LinuxImage = Images.select{|image| image.os_type == 'Linux'}.first
WindowsImage = Images.select{|image| image.os_type == 'Windows'}.first
locations = WindowsImage.locations.split(';')
WindowsImageLocation = locations.include?('West US') ? 'West US' : locations.first
locations = LinuxImage.locations.split(';')
LinuxImageLocation = locations.include?('West US') ? 'West US' : locations.first

MiniTest.after_run do
  VCR.use_cassette("support/VirtualMachineNameGenerator") do
      # Disabling this to make sure all the recorded integration tests are self-contained
      # VirtualMachineNameGenerator.cleanup
  end
end