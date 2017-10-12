# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_server_management'

module Azure::Profiles::Latest
  module ServerManagement::Mgmt
    Gateway = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Gateway
    Node = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Node
    Session = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Session
    PowerShell = Azure::ARM::ServerManagement::Api_2016_07_01_preview::PowerShell

    module Models
      Version = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::Version
      Resource = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::Resource
      EncryptionJwkResource = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::EncryptionJwkResource
      GatewayStatus = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayStatus
      GatewayResources = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayResources
      PromptFieldDescription = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PromptFieldDescription
      GatewayParameters = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayParameters
      PowerShellCommandResult = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandResult
      NodeResources = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::NodeResources
      PowerShellCommandResults = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandResults
      PowerShellTabCompletionResults = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellTabCompletionResults
      SessionParameters = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::SessionParameters
      Error = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::Error
      GatewayProfile = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayProfile
      PowerShellSessionResources = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellSessionResources
      NodeParameters = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::NodeParameters
      PowerShellCommandParameters = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandParameters
      PowerShellTabCompletionParameters = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellTabCompletionParameters
      PromptMessageResponse = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PromptMessageResponse
      GatewayResource = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayResource
      NodeResource = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::NodeResource
      SessionResource = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::SessionResource
      PowerShellSessionResource = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellSessionResource
      PowerShellCommandStatus = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandStatus
      UpgradeMode = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::UpgradeMode
      RetentionPeriod = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::RetentionPeriod
      CredentialDataFormat = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::CredentialDataFormat
      PromptFieldType = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PromptFieldType
      GatewayExpandOption = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayExpandOption
      PowerShellExpandOption = Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellExpandOption
    end

    #
    # ServerManagement
    #
    class ServerManagementClass
      attr_reader :gateway, :node, :session, :power_shell, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::ServerManagement::Api_2016_07_01_preview::ServerManagement.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @gateway = client_0.gateway
        @node = client_0.node
        @session = client_0.session
        @power_shell = client_0.power_shell

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2016-07-01-preview')
        case version
          when '2016-07-01-preview'
            client = Azure::ARM::ServerManagement::Api_2016_07_01_preview::ServerManagement.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def version
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::Version
        end
        def resource
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::Resource
        end
        def encryption_jwk_resource
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::EncryptionJwkResource
        end
        def gateway_status
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayStatus
        end
        def gateway_resources
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayResources
        end
        def prompt_field_description
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PromptFieldDescription
        end
        def gateway_parameters
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayParameters
        end
        def power_shell_command_result
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandResult
        end
        def node_resources
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::NodeResources
        end
        def power_shell_command_results
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandResults
        end
        def power_shell_tab_completion_results
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellTabCompletionResults
        end
        def session_parameters
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::SessionParameters
        end
        def error
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::Error
        end
        def gateway_profile
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayProfile
        end
        def power_shell_session_resources
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellSessionResources
        end
        def node_parameters
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::NodeParameters
        end
        def power_shell_command_parameters
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandParameters
        end
        def power_shell_tab_completion_parameters
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellTabCompletionParameters
        end
        def prompt_message_response
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PromptMessageResponse
        end
        def gateway_resource
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayResource
        end
        def node_resource
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::NodeResource
        end
        def session_resource
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::SessionResource
        end
        def power_shell_session_resource
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellSessionResource
        end
        def power_shell_command_status
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellCommandStatus
        end
        def upgrade_mode
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::UpgradeMode
        end
        def retention_period
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::RetentionPeriod
        end
        def credential_data_format
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::CredentialDataFormat
        end
        def prompt_field_type
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PromptFieldType
        end
        def gateway_expand_option
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::GatewayExpandOption
        end
        def power_shell_expand_option
          Azure::ARM::ServerManagement::Api_2016_07_01_preview::Models::PowerShellExpandOption
        end
      end
    end
  end
end