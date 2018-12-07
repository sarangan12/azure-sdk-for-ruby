# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Azure Active Directory metadata object used for secured connection to
    # cluster.
    #
    class AadMetadataObject

      include MsRestAzure

      # @return [String] The client authentication method.
      attr_accessor :type

      # @return [AadMetadata] Azure Active Directory metadata used for secured
      # connection to cluster.
      attr_accessor :metadata


      #
      # Mapper for AadMetadataObject class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'AadMetadataObject',
          type: {
            name: 'Composite',
            class_name: 'AadMetadataObject',
            model_properties: {
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              metadata: {
                client_side_validation: true,
                required: false,
                serialized_name: 'metadata',
                type: {
                  name: 'Composite',
                  class_name: 'AadMetadata'
                }
              }
            }
          }
        }
      end
    end
  end
end
