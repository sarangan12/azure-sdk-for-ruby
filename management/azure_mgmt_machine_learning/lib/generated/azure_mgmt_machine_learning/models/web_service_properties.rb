# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # The set of properties specific to the Azure ML web service resource.
    #
    class WebServiceProperties

      include MsRestAzure

      include MsRest::JSONable
      @@discriminatorMap = Hash.new
      @@discriminatorMap["Graph"] = "WebServicePropertiesForGraph"

      def initialize
        @packageType = "WebServiceProperties"
      end

      attr_accessor :packageType

      # @return [String] The title of the web service.
      attr_accessor :title

      # @return [String] The description of the web service.
      attr_accessor :description

      # @return [DateTime] Read Only: The date and time when the web service
      # was created.
      attr_accessor :created_on

      # @return [DateTime] Read Only: The date and time when the web service
      # was last modified.
      attr_accessor :modified_on

      # @return [ProvisioningState] Read Only: The provision state of the web
      # service. Valid values are Unknown, Provisioning, Succeeded, and Failed.
      # Possible values include: 'Unknown', 'Provisioning', 'Succeeded',
      # 'Failed'
      attr_accessor :provisioning_state

      # @return [WebServiceKeys] Contains the web service provisioning keys. If
      # you do not specify provisioning keys, the Azure Machine Learning system
      # generates them for you. Note: The keys are not returned from calls to
      # GET operations.
      attr_accessor :keys

      # @return [Boolean] When set to true, indicates that the web service is
      # read-only and can no longer be updated or patched, only removed.
      # Default, is false. Note: Once set to true, you cannot change its value.
      attr_accessor :read_only

      # @return [String] Read Only: Contains the URI of the swagger spec
      # associated with this web service.
      attr_accessor :swagger_location

      # @return [Boolean] When set to true, sample data is included in the web
      # service's swagger definition. The default value is true.
      attr_accessor :expose_sample_data

      # @return [RealtimeConfiguration] Contains the configuration settings for
      # the web service endpoint.
      attr_accessor :realtime_configuration

      # @return [DiagnosticsConfiguration] Settings controlling the diagnostics
      # traces collection for the web service.
      attr_accessor :diagnostics

      # @return [StorageAccount] Specifies the storage account that Azure
      # Machine Learning uses to store information about the web service. Only
      # the name of the storage account is returned from calls to GET
      # operations. When updating the storage account information, you must
      # ensure that all necessary assets are available in the new storage
      # account or calls to your web service will fail.
      attr_accessor :storage_account

      # @return [MachineLearningWorkspace] Specifies the Machine Learning
      # workspace containing the experiment that is source for the web service.
      attr_accessor :machine_learning_workspace

      # @return [CommitmentPlan] Contains the commitment plan associated with
      # this web service. Set at creation time. Once set, this value cannot be
      # changed. Note: The commitment plan is not returned from calls to GET
      # operations.
      attr_accessor :commitment_plan

      # @return [ServiceInputOutputSpecification] Contains the Swagger 2.0
      # schema describing one or more of the web service's inputs. For more
      # information, see the Swagger specification.
      attr_accessor :input

      # @return [ServiceInputOutputSpecification] Contains the Swagger 2.0
      # schema describing one or more of the web service's outputs. For more
      # information, see the Swagger specification.
      attr_accessor :output

      # @return [ExampleRequest] Defines sample input data for one or more of
      # the service's inputs.
      attr_accessor :example_request

      # @return [Hash{String => AssetItem}] Contains user defined properties
      # describing web service assets. Properties are expressed as Key/Value
      # pairs.
      attr_accessor :assets

      # @return [Hash{String => String}] The set of global parameters values
      # defined for the web service, given as a global parameter name to
      # default value map. If no default value is specified, the parameter is
      # considered to be required.
      attr_accessor :parameters


      #
      # Mapper for WebServiceProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'WebServiceProperties',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'packageType',
            uber_parent: 'WebServiceProperties',
            class_name: 'WebServiceProperties',
            model_properties: {
              title: {
                required: false,
                serialized_name: 'title',
                type: {
                  name: 'String'
                }
              },
              description: {
                required: false,
                serialized_name: 'description',
                type: {
                  name: 'String'
                }
              },
              created_on: {
                required: false,
                read_only: true,
                serialized_name: 'createdOn',
                type: {
                  name: 'DateTime'
                }
              },
              modified_on: {
                required: false,
                read_only: true,
                serialized_name: 'modifiedOn',
                type: {
                  name: 'DateTime'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'provisioningState',
                type: {
                  name: 'String'
                }
              },
              keys: {
                required: false,
                serialized_name: 'keys',
                type: {
                  name: 'Composite',
                  class_name: 'WebServiceKeys'
                }
              },
              read_only: {
                required: false,
                serialized_name: 'readOnly',
                type: {
                  name: 'Boolean'
                }
              },
              swagger_location: {
                required: false,
                read_only: true,
                serialized_name: 'swaggerLocation',
                type: {
                  name: 'String'
                }
              },
              expose_sample_data: {
                required: false,
                serialized_name: 'exposeSampleData',
                type: {
                  name: 'Boolean'
                }
              },
              realtime_configuration: {
                required: false,
                serialized_name: 'realtimeConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'RealtimeConfiguration'
                }
              },
              diagnostics: {
                required: false,
                serialized_name: 'diagnostics',
                type: {
                  name: 'Composite',
                  class_name: 'DiagnosticsConfiguration'
                }
              },
              storage_account: {
                required: false,
                serialized_name: 'storageAccount',
                type: {
                  name: 'Composite',
                  class_name: 'StorageAccount'
                }
              },
              machine_learning_workspace: {
                required: false,
                serialized_name: 'machineLearningWorkspace',
                type: {
                  name: 'Composite',
                  class_name: 'MachineLearningWorkspace'
                }
              },
              commitment_plan: {
                required: false,
                serialized_name: 'commitmentPlan',
                type: {
                  name: 'Composite',
                  class_name: 'CommitmentPlan'
                }
              },
              input: {
                required: false,
                serialized_name: 'input',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceInputOutputSpecification'
                }
              },
              output: {
                required: false,
                serialized_name: 'output',
                type: {
                  name: 'Composite',
                  class_name: 'ServiceInputOutputSpecification'
                }
              },
              example_request: {
                required: false,
                serialized_name: 'exampleRequest',
                type: {
                  name: 'Composite',
                  class_name: 'ExampleRequest'
                }
              },
              assets: {
                required: false,
                serialized_name: 'assets',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'AssetItemElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AssetItem'
                      }
                  }
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
