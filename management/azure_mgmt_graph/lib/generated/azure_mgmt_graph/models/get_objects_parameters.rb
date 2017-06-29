# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Graph
  module Models
    #
    # Request parameters for the GetObjectsByObjectIds API.
    #
    class GetObjectsParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] The requested object IDs.
      attr_accessor :object_ids

      # @return [Array<String>] The requested object types.
      attr_accessor :types

      # @return [Boolean] If true, also searches for object IDs in the partner
      # tenant.
      attr_accessor :include_directory_object_references


      #
      # Mapper for GetObjectsParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GetObjectsParameters',
          type: {
            name: 'Composite',
            class_name: 'GetObjectsParameters',
            model_properties: {
              object_ids: {
                required: false,
                serialized_name: 'objectIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              types: {
                required: false,
                serialized_name: 'types',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              include_directory_object_references: {
                required: true,
                serialized_name: 'includeDirectoryObjectReferences',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
