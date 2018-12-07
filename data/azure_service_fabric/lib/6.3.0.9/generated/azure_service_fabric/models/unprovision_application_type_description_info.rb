# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes the operation to unregister or unprovision an application type
    # and its version that was registered with the Service Fabric.
    #
    class UnprovisionApplicationTypeDescriptionInfo

      include MsRestAzure

      # @return [String] The version of the application type as defined in the
      # application manifest.
      attr_accessor :application_type_version

      # @return [Boolean] The flag indicating whether or not unprovision should
      # occur asynchronously. When set to true, the unprovision operation
      # returns when the request is accepted by the system, and the unprovision
      # operation continues without any timeout limit. The default value is
      # false. However, we recommend setting it to true for large application
      # packages that were provisioned.
      attr_accessor :async


      #
      # Mapper for UnprovisionApplicationTypeDescriptionInfo class as Ruby
      # Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'UnprovisionApplicationTypeDescriptionInfo',
          type: {
            name: 'Composite',
            class_name: 'UnprovisionApplicationTypeDescriptionInfo',
            model_properties: {
              application_type_version: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ApplicationTypeVersion',
                type: {
                  name: 'String'
                }
              },
              async: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Async',
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
