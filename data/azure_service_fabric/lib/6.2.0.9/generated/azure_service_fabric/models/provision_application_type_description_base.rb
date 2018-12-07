# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Represents the type of registration or provision requested, and if the
    # operation needs to be asynchronous or not. Supported types of provision
    # operations are from either image store or external store.
    #
    class ProvisionApplicationTypeDescriptionBase

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["ImageStorePath"] = "ProvisionApplicationTypeDescription"
      @@discriminatorMap["ExternalStore"] = "ExternalStoreProvisionApplicationTypeDescription"

      def initialize
        @Kind = "ProvisionApplicationTypeDescriptionBase"
      end

      attr_accessor :Kind

      # @return [Boolean] Indicates whether or not provisioning should occur
      # asynchronously. When set to true, the provision operation returns when
      # the request is accepted by the system, and the provision operation
      # continues without any timeout limit. The default value is false. For
      # large application packages, we recommend setting the value to true.
      attr_accessor :async


      #
      # Mapper for ProvisionApplicationTypeDescriptionBase class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProvisionApplicationTypeDescriptionBase',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'ProvisionApplicationTypeDescriptionBase',
            class_name: 'ProvisionApplicationTypeDescriptionBase',
            model_properties: {
              async: {
                client_side_validation: true,
                required: true,
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
