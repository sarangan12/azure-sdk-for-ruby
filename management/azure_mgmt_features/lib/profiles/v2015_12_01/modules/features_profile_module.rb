# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_features'

module Azure::Features::Profiles::V2015_12_01::Mgmt
    Features = Azure::ARM::Features::Api_2015_12_01::Features

    module Models
      FeatureResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
      FeatureOperationsListResult = Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
      FeatureProperties = Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
    end

    #
    # Features
    #
    class FeaturesClass
      attr_reader :features, :configurable, :base_url, :options, :model_classes

      def initialize(options = {})
        if options.is_a?(Hash) && options.length == 0
          @options = setup_options
        else
          @options = options
        end

        reset!(options)

        @configurable, @base_url, @options = self, nil, nil

        client_0 = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @features = client_0.features

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2015-12-01')
        case version
          when '2015-12-01'
            client = Azure::ARM::Features::Api_2015_12_01::FeatureClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def feature_result
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureResult
        end
        def feature_operations_list_result
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureOperationsListResult
        end
        def feature_properties
          Azure::ARM::Features::Api_2015_12_01::Models::FeatureProperties
        end
      end
    end
end