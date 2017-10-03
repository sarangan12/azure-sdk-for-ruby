# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_03_01
  module Models
    #
    # Policy Contract details.
    #
    class PolicyContract < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Xml Encoded contents of the Policy.
      attr_accessor :policy_content


      #
      # Mapper for PolicyContract class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicyContract',
          type: {
            name: 'Composite',
            class_name: 'PolicyContract',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              policy_content: {
                required: true,
                serialized_name: 'properties.policyContent',
                type: {
                  name: 'String'
                }
              }
            }
          }
        }
      end
    end
  end
end
