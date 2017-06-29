# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Parameters supplied to the Patch Namespace operation.
    #
    class NamespacePatchParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [Sku] The sku of the created namespace
      attr_accessor :sku


      #
      # Mapper for NamespacePatchParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'NamespacePatchParameters',
          type: {
            name: 'Composite',
            class_name: 'NamespacePatchParameters',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              }
            }
          }
        }
      end
    end
  end
end
