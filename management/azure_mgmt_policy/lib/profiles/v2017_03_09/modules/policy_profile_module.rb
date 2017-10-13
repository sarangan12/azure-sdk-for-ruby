# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_policy'

module Azure::Policy::Profiles::V2017_03_09::Mgmt
    PolicyAssignments = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyAssignments
    PolicyDefinitions = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyDefinitions

    module Models
      PolicyAssignment = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignment
      PolicyDefinition = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinition
      PolicyAssignmentListResult = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignmentListResult
      PolicyDefinitionListResult = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinitionListResult
      PolicyType = Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyType
    end

    #
    # Policy
    #
    class PolicyClass
      attr_reader :policy_assignments, :policy_definitions, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @policy_assignments = client_0.policy_assignments
        @policy_definitions = client_0.policy_definitions

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-10-01-preview')
        case version
          when '2015-10-01-preview'
            client = Azure::Policy::Mgmt::V2015_10_01_preview::PolicyClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def policy_assignment
          Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignment
        end
        def policy_definition
          Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinition
        end
        def policy_assignment_list_result
          Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyAssignmentListResult
        end
        def policy_definition_list_result
          Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyDefinitionListResult
        end
        def policy_type
          Azure::Policy::Mgmt::V2015_10_01_preview::Models::PolicyType
        end
      end
    end
end
