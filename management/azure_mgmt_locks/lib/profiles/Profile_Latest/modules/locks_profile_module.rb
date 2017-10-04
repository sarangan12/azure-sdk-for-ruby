# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require_relative '../../../azure_mgmt_locks'


module Azure
  module Profiles
    module LocksModule
    module Management
      module Profile_Latest
        module Locks
          ManagementLocks = Azure::ARM::Locks::Api_2016_09_01::ManagementLocks
          ManagementLockClient = Azure::ARM::Locks::Api_2016_09_01::ManagementLockClient

          module Models
            ManagementLockObject = Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockObject
            ManagementLockListResult = Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockListResult
            ManagementLockOwner = Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockOwner
            LockLevel = Azure::ARM::Locks::Api_2016_09_01::Models::LockLevel
          end

          #
          # Locks
          #
          class Locks
            attr_accessor :management_locks, :management_lock_client, :configurable, :base_url, :options, :model_classes

            def initialize(configurable, base_url, options)
              @configurable, @base_url, @options = configurable, base_url, options
              client = .new(configurable.credentials, base_url, options)
              client.subscription_id = configurable.subscription_id
              self.management_locks = Azure::ARM::Locks::Api_2016_09_01::ManagementLocks.new(client)
              self.management_lock_client = Azure::ARM::Locks::Api_2016_09_01::ManagementLockClient.new(client)
              self.model_classes = ModelClasses.new
            end

            def get_client(version)
              case version
                else
                  raise "No client of version #{version} could be found in this profile."
              end
            end

            class ModelClasses
              def management_lock_object
                Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockObject
              end
              def management_lock_list_result
                Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockListResult
              end
              def management_lock_owner
                Azure::ARM::Locks::Api_2016_09_01::Models::ManagementLockOwner
              end
              def lock_level
                Azure::ARM::Locks::Api_2016_09_01::Models::LockLevel
              end
            end
          end
        end
      end
    end
    end
  end
end