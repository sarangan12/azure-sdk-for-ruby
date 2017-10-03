# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning::Api_2017_01_01
  module Models
    #
    # Properties specific to a Graph based web service.
    #
    class WebServicePropertiesForGraph < WebServiceProperties

      include MsRestAzure

      include MsRest::JSONable

      def initialize
        @packageType = "Graph"
      end

      attr_accessor :packageType

      # @return [GraphPackage] The definition of the graph package making up
      # this web service.
      attr_accessor :package


      #
      # Mapper for WebServicePropertiesForGraph class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Graph',
          type: {
            name: 'Composite',
            class_name: 'WebServicePropertiesForGraph',
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
                      serialized_name: 'WebServiceParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebServiceParameter'
                      }
                  }
                }
              },
              payloads_in_blob_storage: {
                required: false,
                serialized_name: 'payloadsInBlobStorage',
                type: {
                  name: 'Boolean'
                }
              },
              payloads_location: {
                required: false,
                serialized_name: 'payloadsLocation',
                type: {
                  name: 'Composite',
                  class_name: 'BlobLocation'
                }
              },
              packageType: {
                required: true,
                serialized_name: 'packageType',
                type: {
                  name: 'String'
                }
              },
              package: {
                required: false,
                serialized_name: 'package',
                type: {
                  name: 'Composite',
                  class_name: 'GraphPackage'
                }
              }
            }
          }
        }
      end
    end
  end
end
