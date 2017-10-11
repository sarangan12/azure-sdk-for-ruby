# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_subscriptions'

module Azure::Profiles::Management::Profile_Latest
  module Subscriptions
    Subscriptions = Azure::ARM::Subscriptions::Api_2016_06_01::Subscriptions
    Tenants = Azure::ARM::Subscriptions::Api_2016_06_01::Tenants

    module Models
      Subscription = Azure::ARM::Subscriptions::Api_2016_06_01::Models::Subscription
      SubscriptionListResult = Azure::ARM::Subscriptions::Api_2016_06_01::Models::SubscriptionListResult
      LocationListResult = Azure::ARM::Subscriptions::Api_2016_06_01::Models::LocationListResult
      TenantIdDescription = Azure::ARM::Subscriptions::Api_2016_06_01::Models::TenantIdDescription
      Location = Azure::ARM::Subscriptions::Api_2016_06_01::Models::Location
      TenantListResult = Azure::ARM::Subscriptions::Api_2016_06_01::Models::TenantListResult
      SubscriptionPolicies = Azure::ARM::Subscriptions::Api_2016_06_01::Models::SubscriptionPolicies
      SubscriptionState = Azure::ARM::Subscriptions::Api_2016_06_01::Models::SubscriptionState
      SpendingLimit = Azure::ARM::Subscriptions::Api_2016_06_01::Models::SpendingLimit
    end

    #
    # Subscriptions
    #
    class SubscriptionsClass
      attr_reader :subscriptions, :tenants, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::Subscriptions::Api_2016_06_01::SubscriptionClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @subscriptions = client_0.subscriptions
        @tenants = client_0.tenants

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-06-01')
        case version
          when '2016-06-01'
            client = Azure::ARM::Subscriptions::Api_2016_06_01::SubscriptionClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def subscription
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::Subscription
        end
        def subscription_list_result
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::SubscriptionListResult
        end
        def location_list_result
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::LocationListResult
        end
        def tenant_id_description
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::TenantIdDescription
        end
        def location
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::Location
        end
        def tenant_list_result
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::TenantListResult
        end
        def subscription_policies
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::SubscriptionPolicies
        end
        def subscription_state
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::SubscriptionState
        end
        def spending_limit
          Azure::ARM::Subscriptions::Api_2016_06_01::Models::SpendingLimit
        end
      end
    end
  end
end