# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesSiteRecovery::Api_2016_08_10
  module Models
    #
    # Recovery plan protected item.
    #
    class RecoveryPlanProtectedItem

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ARM Id of the recovery plan protected item.
      attr_accessor :id

      # @return [String] The virtual machine Id.
      attr_accessor :virtual_machine_id


      #
      # Mapper for RecoveryPlanProtectedItem class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecoveryPlanProtectedItem',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanProtectedItem',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_id: {
                required: false,
                serialized_name: 'virtualMachineId',
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
