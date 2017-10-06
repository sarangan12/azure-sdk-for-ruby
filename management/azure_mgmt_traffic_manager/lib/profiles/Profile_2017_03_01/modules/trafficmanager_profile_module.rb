# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_traffic_manager'

module Azure::Profiles::TrafficManagerModule::Management::Profile_2017_03_01
  module TrafficManager
    Endpoints = Azure::ARM::TrafficManager::Api_2017_03_01::Endpoints
    Profiles = Azure::ARM::TrafficManager::Api_2017_03_01::Profiles
    GeographicHierarchies = Azure::ARM::TrafficManager::Api_2017_03_01::GeographicHierarchies

    module Models
      ProfileListResult = Azure::ARM::TrafficManager::Api_2017_03_01::Models::ProfileListResult
      TrafficManagerNameAvailability = Azure::ARM::TrafficManager::Api_2017_03_01::Models::TrafficManagerNameAvailability
      Endpoint = Azure::ARM::TrafficManager::Api_2017_03_01::Models::Endpoint
      Region = Azure::ARM::TrafficManager::Api_2017_03_01::Models::Region
      DnsConfig = Azure::ARM::TrafficManager::Api_2017_03_01::Models::DnsConfig
      MonitorConfig = Azure::ARM::TrafficManager::Api_2017_03_01::Models::MonitorConfig
      DeleteOperationResult = Azure::ARM::TrafficManager::Api_2017_03_01::Models::DeleteOperationResult
      Resource = Azure::ARM::TrafficManager::Api_2017_03_01::Models::Resource
      CheckTrafficManagerRelativeDnsNameAvailabilityParameters = Azure::ARM::TrafficManager::Api_2017_03_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
      Profile = Azure::ARM::TrafficManager::Api_2017_03_01::Models::Profile
      TrafficManagerGeographicHierarchy = Azure::ARM::TrafficManager::Api_2017_03_01::Models::TrafficManagerGeographicHierarchy
    end

    #
    # TrafficManager
    #
    class TrafficManagerClass
      attr_accessor :endpoints, :profiles, :geographic_hierarchies, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url, options)
        @configurable, @base_url, @options = configurable, base_url, options
        client = Azure::ARM::TrafficManager::Api_2017_03_01::TrafficManagerManagementClient.new(configurable.credentials, base_url, options)
        if(client.respond_to?(:subscription_id))
          client.subscription_id = configurable.subscription_id
        end
        self.endpoints = Azure::ARM::TrafficManager::Api_2017_03_01::Endpoints.new(client)
        self.profiles = Azure::ARM::TrafficManager::Api_2017_03_01::Profiles.new(client)
        self.geographic_hierarchies = Azure::ARM::TrafficManager::Api_2017_03_01::GeographicHierarchies.new(client)
        self.model_classes = ModelClasses.new
      end

      def get_client(version)
        case version
          when '2017-03-01'
            client = Azure::ARM::TrafficManager::Api_2017_03_01::TrafficManagerManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def profile_list_result
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::ProfileListResult
        end
        def traffic_manager_name_availability
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::TrafficManagerNameAvailability
        end
        def endpoint
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::Endpoint
        end
        def region
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::Region
        end
        def dns_config
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::DnsConfig
        end
        def monitor_config
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::MonitorConfig
        end
        def delete_operation_result
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::DeleteOperationResult
        end
        def resource
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::Resource
        end
        def check_traffic_manager_relative_dns_name_availability_parameters
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::CheckTrafficManagerRelativeDnsNameAvailabilityParameters
        end
        def profile
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::Profile
        end
        def traffic_manager_geographic_hierarchy
          Azure::ARM::TrafficManager::Api_2017_03_01::Models::TrafficManagerGeographicHierarchy
        end
      end
    end
  end
end
