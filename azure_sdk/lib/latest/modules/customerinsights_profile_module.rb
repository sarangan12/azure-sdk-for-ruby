# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for license information.

require 'azure_mgmt_customer_insights'

module Azure::Profiles::Latest
  module CustomerInsights::Mgmt
    Operations = Azure::ARM::CustomerInsights::Api_2017_04_26::Operations
    Hubs = Azure::ARM::CustomerInsights::Api_2017_04_26::Hubs
    Profiles = Azure::ARM::CustomerInsights::Api_2017_04_26::Profiles
    Interactions = Azure::ARM::CustomerInsights::Api_2017_04_26::Interactions
    Relationships = Azure::ARM::CustomerInsights::Api_2017_04_26::Relationships
    RelationshipLinks = Azure::ARM::CustomerInsights::Api_2017_04_26::RelationshipLinks
    AuthorizationPolicies = Azure::ARM::CustomerInsights::Api_2017_04_26::AuthorizationPolicies
    Connectors = Azure::ARM::CustomerInsights::Api_2017_04_26::Connectors
    ConnectorMappings = Azure::ARM::CustomerInsights::Api_2017_04_26::ConnectorMappings
    Kpi = Azure::ARM::CustomerInsights::Api_2017_04_26::Kpi
    WidgetTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::WidgetTypes
    Views = Azure::ARM::CustomerInsights::Api_2017_04_26::Views
    Links = Azure::ARM::CustomerInsights::Api_2017_04_26::Links
    Roles = Azure::ARM::CustomerInsights::Api_2017_04_26::Roles
    RoleAssignments = Azure::ARM::CustomerInsights::Api_2017_04_26::RoleAssignments
    Images = Azure::ARM::CustomerInsights::Api_2017_04_26::Images
    Predictions = Azure::ARM::CustomerInsights::Api_2017_04_26::Predictions

    module Models
      KpiListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiListResult
      HubBillingInfoFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubBillingInfoFormat
      Participant = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Participant
      StrongId = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::StrongId
      MetadataDefinitionBase = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::MetadataDefinitionBase
      PredictionSystemGeneratedEntities = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionSystemGeneratedEntities
      DataSourcePrecedence = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourcePrecedence
      ProfileListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileListResult
      SuggestRelationshipLinksResponse = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SuggestRelationshipLinksResponse
      AuthorizationPolicy = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicy
      PredictionGradesItem = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionGradesItem
      SalesforceTable = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceTable
      InteractionListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionListResult
      AzureBlobConnectorProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AzureBlobConnectorProperties
      PredictionMappings = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionMappings
      CrmConnectorProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorProperties
      ConnectorMappingErrorManagement = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingErrorManagement
      RelationshipsLookup = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipsLookup
      ConnectorMappingAvailability = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingAvailability
      ConnectorMappingCompleteOperation = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingCompleteOperation
      OperationListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::OperationListResult
      KpiThresholds = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiThresholds
      ConnectorListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorListResult
      KpiParticipantProfilesMetadata = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiParticipantProfilesMetadata
      Operation = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Operation
      KpiExtract = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiExtract
      ConnectorMappingListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingListResult
      Resource = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Resource
      OperationDisplay = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::OperationDisplay
      TypePropertiesMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::TypePropertiesMapping
      AuthorizationPolicyListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyListResult
      RelationshipTypeFieldMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeFieldMapping
      PredictionListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionListResult
      RelationshipLinkFieldMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkFieldMapping
      LinkListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkListResult
      HubListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubListResult
      PredictionModelStatus = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelStatus
      PropertyDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PropertyDefinition
      RelationshipListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipListResult
      SalesforceConnectorProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceConnectorProperties
      PredictionTrainingResults = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionTrainingResults
      ConnectorMappingFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingFormat
      RelationshipLinkListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkListResult
      ConnectorMappingProperties = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingProperties
      CanonicalProfileDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinition
      KpiAlias = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiAlias
      ViewListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewListResult
      ProxyResource = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProxyResource
      CanonicalProfileDefinitionPropertiesItem = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinitionPropertiesItem
      RelationshipTypeMapping = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeMapping
      WidgetTypeListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeListResult
      ProfileEnumValidValuesFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileEnumValidValuesFormat
      AssignmentPrincipal = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AssignmentPrincipal
      CrmConnectorEntities = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorEntities
      ResourceSetDescription = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ResourceSetDescription
      KpiGroupByMetadata = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiGroupByMetadata
      PredictionDistributionDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinition
      ParticipantPropertyReference = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantPropertyReference
      RoleAssignmentListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentListResult
      SalesforceDiscoverSetting = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceDiscoverSetting
      PredictionDistributionDefinitionDistributionsItem = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinitionDistributionsItem
      KpiDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiDefinition
      RoleListResult = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleListResult
      ConnectorMappingStructure = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStructure
      GetImageUploadUrlInput = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::GetImageUploadUrlInput
      ParticipantProfilePropertyReference = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantProfilePropertyReference
      ImageDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ImageDefinition
      Hub = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Hub
      EntityTypeDefinition = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypeDefinition
      ProfileResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileResourceFormat
      InteractionResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionResourceFormat
      KpiResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiResourceFormat
      EnrichingKpi = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EnrichingKpi
      ConnectorResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorResourceFormat
      ConnectorMappingResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingResourceFormat
      AuthorizationPolicyResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyResourceFormat
      LinkResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkResourceFormat
      RelationshipResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipResourceFormat
      RelationshipLinkResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkResourceFormat
      ViewResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewResourceFormat
      WidgetTypeResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeResourceFormat
      RoleAssignmentResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentResourceFormat
      RoleResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleResourceFormat
      PredictionResourceFormat = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionResourceFormat
      EntityTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypes
      DataSourceType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourceType
      Status = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Status
      ProvisioningStates = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProvisioningStates
      PermissionTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PermissionTypes
      ConnectorTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorTypes
      ConnectorStates = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorStates
      ErrorManagementTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ErrorManagementTypes
      FrequencyTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::FrequencyTypes
      CompletionOperationTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CompletionOperationTypes
      ConnectorMappingStates = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStates
      CalculationWindowTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CalculationWindowTypes
      KpiFunctions = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiFunctions
      EntityType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityType
      LinkTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkTypes
      InstanceOperationType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InstanceOperationType
      CardinalityTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CardinalityTypes
      RoleTypes = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleTypes
      CanonicalPropertyValueType = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalPropertyValueType
      PredictionModelLifeCycle = Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelLifeCycle
    end

    #
    # CustomerInsights
    #
    class CustomerInsightsClass
      attr_reader :operations, :hubs, :profiles, :interactions, :relationships, :relationship_links, :authorization_policies, :connectors, :connector_mappings, :kpi, :widget_types, :views, :links, :roles, :role_assignments, :images, :predictions, :configurable, :base_url, :options, :model_classes

      def initialize(configurable, base_url=nil, options=nil)
        @configurable, @base_url, @options = configurable, base_url, options

        client_0 = Azure::ARM::CustomerInsights::Api_2017_04_26::CustomerInsightsManagementClient.new(configurable.credentials, base_url, options)
        if(client_0.respond_to?(:subscription_id))
          client_0.subscription_id = configurable.subscription_id
        end
        @operations = client_0.operations
        @hubs = client_0.hubs
        @profiles = client_0.profiles
        @interactions = client_0.interactions
        @relationships = client_0.relationships
        @relationship_links = client_0.relationship_links
        @authorization_policies = client_0.authorization_policies
        @connectors = client_0.connectors
        @connector_mappings = client_0.connector_mappings
        @kpi = client_0.kpi
        @widget_types = client_0.widget_types
        @views = client_0.views
        @links = client_0.links
        @roles = client_0.roles
        @role_assignments = client_0.role_assignments
        @images = client_0.images
        @predictions = client_0.predictions

        @model_classes = ModelClasses.new
      end

      #
      # Method to get the client object
      #
      # @return Client object
      #
      def get_client(version = '2017-04-26')
        case version
          when '2017-04-26'
            client = Azure::ARM::CustomerInsights::Api_2017_04_26::CustomerInsightsManagementClient.new(@configurable.credentials, @base_url, @options)
            client.subscription_id = configurable.subscription_id
            return client
          else
            raise "No client of version #{version} could be found in this profile."
        end
      end

      class ModelClasses
        def kpi_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiListResult
        end
        def hub_billing_info_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubBillingInfoFormat
        end
        def participant
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Participant
        end
        def strong_id
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::StrongId
        end
        def metadata_definition_base
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::MetadataDefinitionBase
        end
        def prediction_system_generated_entities
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionSystemGeneratedEntities
        end
        def data_source_precedence
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourcePrecedence
        end
        def profile_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileListResult
        end
        def suggest_relationship_links_response
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SuggestRelationshipLinksResponse
        end
        def authorization_policy
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicy
        end
        def prediction_grades_item
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionGradesItem
        end
        def salesforce_table
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceTable
        end
        def interaction_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionListResult
        end
        def azure_blob_connector_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AzureBlobConnectorProperties
        end
        def prediction_mappings
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionMappings
        end
        def crm_connector_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorProperties
        end
        def connector_mapping_error_management
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingErrorManagement
        end
        def relationships_lookup
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipsLookup
        end
        def connector_mapping_availability
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingAvailability
        end
        def connector_mapping_complete_operation
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingCompleteOperation
        end
        def operation_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::OperationListResult
        end
        def kpi_thresholds
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiThresholds
        end
        def connector_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorListResult
        end
        def kpi_participant_profiles_metadata
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiParticipantProfilesMetadata
        end
        def operation
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Operation
        end
        def kpi_extract
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiExtract
        end
        def connector_mapping_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingListResult
        end
        def resource
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Resource
        end
        def operation_display
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::OperationDisplay
        end
        def type_properties_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::TypePropertiesMapping
        end
        def authorization_policy_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyListResult
        end
        def relationship_type_field_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeFieldMapping
        end
        def prediction_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionListResult
        end
        def relationship_link_field_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkFieldMapping
        end
        def link_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkListResult
        end
        def hub_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::HubListResult
        end
        def prediction_model_status
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelStatus
        end
        def property_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PropertyDefinition
        end
        def relationship_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipListResult
        end
        def salesforce_connector_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceConnectorProperties
        end
        def prediction_training_results
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionTrainingResults
        end
        def connector_mapping_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingFormat
        end
        def relationship_link_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkListResult
        end
        def connector_mapping_properties
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingProperties
        end
        def canonical_profile_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinition
        end
        def kpi_alias
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiAlias
        end
        def view_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewListResult
        end
        def proxy_resource
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProxyResource
        end
        def canonical_profile_definition_properties_item
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalProfileDefinitionPropertiesItem
        end
        def relationship_type_mapping
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipTypeMapping
        end
        def widget_type_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeListResult
        end
        def profile_enum_valid_values_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileEnumValidValuesFormat
        end
        def assignment_principal
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AssignmentPrincipal
        end
        def crm_connector_entities
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CrmConnectorEntities
        end
        def resource_set_description
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ResourceSetDescription
        end
        def kpi_group_by_metadata
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiGroupByMetadata
        end
        def prediction_distribution_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinition
        end
        def participant_property_reference
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantPropertyReference
        end
        def role_assignment_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentListResult
        end
        def salesforce_discover_setting
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::SalesforceDiscoverSetting
        end
        def prediction_distribution_definition_distributions_item
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionDistributionDefinitionDistributionsItem
        end
        def kpi_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiDefinition
        end
        def role_list_result
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleListResult
        end
        def connector_mapping_structure
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStructure
        end
        def get_image_upload_url_input
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::GetImageUploadUrlInput
        end
        def participant_profile_property_reference
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ParticipantProfilePropertyReference
        end
        def image_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ImageDefinition
        end
        def hub
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Hub
        end
        def entity_type_definition
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypeDefinition
        end
        def profile_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProfileResourceFormat
        end
        def interaction_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InteractionResourceFormat
        end
        def kpi_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiResourceFormat
        end
        def enriching_kpi
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EnrichingKpi
        end
        def connector_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorResourceFormat
        end
        def connector_mapping_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingResourceFormat
        end
        def authorization_policy_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::AuthorizationPolicyResourceFormat
        end
        def link_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkResourceFormat
        end
        def relationship_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipResourceFormat
        end
        def relationship_link_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RelationshipLinkResourceFormat
        end
        def view_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ViewResourceFormat
        end
        def widget_type_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::WidgetTypeResourceFormat
        end
        def role_assignment_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleAssignmentResourceFormat
        end
        def role_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleResourceFormat
        end
        def prediction_resource_format
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionResourceFormat
        end
        def entity_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityTypes
        end
        def data_source_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::DataSourceType
        end
        def status
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::Status
        end
        def provisioning_states
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ProvisioningStates
        end
        def permission_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PermissionTypes
        end
        def connector_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorTypes
        end
        def connector_states
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorStates
        end
        def error_management_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ErrorManagementTypes
        end
        def frequency_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::FrequencyTypes
        end
        def completion_operation_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CompletionOperationTypes
        end
        def connector_mapping_states
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::ConnectorMappingStates
        end
        def calculation_window_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CalculationWindowTypes
        end
        def kpi_functions
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::KpiFunctions
        end
        def entity_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::EntityType
        end
        def link_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::LinkTypes
        end
        def instance_operation_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::InstanceOperationType
        end
        def cardinality_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CardinalityTypes
        end
        def role_types
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::RoleTypes
        end
        def canonical_property_value_type
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::CanonicalPropertyValueType
        end
        def prediction_model_life_cycle
          Azure::ARM::CustomerInsights::Api_2017_04_26::Models::PredictionModelLifeCycle
        end
      end
    end
  end
end