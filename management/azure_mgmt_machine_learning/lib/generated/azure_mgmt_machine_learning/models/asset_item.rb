# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MachineLearning
  module Models
    #
    # Information about an asset associated with the web service.
    #
    class AssetItem

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Asset's friendly name.
      attr_accessor :name

      # @return [String] Asset's Id.
      attr_accessor :id

      # @return [AssetType] Asset's type. Possible values include: 'Module',
      # 'Resource'
      attr_accessor :type

      # @return [BlobLocation] Access information for the asset.
      attr_accessor :location_info

      # @return [Hash{String => InputPort}] Information about the asset's input
      # ports.
      attr_accessor :input_ports

      # @return [Hash{String => OutputPort}] Information about the asset's
      # output ports.
      attr_accessor :output_ports

      # @return [Hash{String => String}] If the asset is a custom module, this
      # holds the module's metadata.
      attr_accessor :metadata

      # @return [Array<ModuleAssetParameter>] If the asset is a custom module,
      # this holds the module's parameters.
      attr_accessor :parameters


      #
      # Mapper for AssetItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AssetItem',
          type: {
            name: 'Composite',
            class_name: 'AssetItem',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location_info: {
                required: true,
                serialized_name: 'locationInfo',
                type: {
                  name: 'Composite',
                  class_name: 'BlobLocation'
                }
              },
              input_ports: {
                required: false,
                serialized_name: 'inputPorts',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'InputPortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'InputPort'
                      }
                  }
                }
              },
              output_ports: {
                required: false,
                serialized_name: 'outputPorts',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'OutputPortElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'OutputPort'
                      }
                  }
                }
              },
              metadata: {
                required: false,
                serialized_name: 'metadata',
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
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ModuleAssetParameterElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ModuleAssetParameter'
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
