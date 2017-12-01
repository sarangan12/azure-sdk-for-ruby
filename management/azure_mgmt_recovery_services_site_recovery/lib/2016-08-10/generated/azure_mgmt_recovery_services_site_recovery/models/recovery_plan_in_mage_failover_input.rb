# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan InMage failover input.
    #
    class RecoveryPlanInMageFailoverInput < RecoveryPlanProviderSpecificFailoverInput

      include MsRestAzure


      def initialize
        @instanceType = "InMage"
      end

      attr_accessor :instanceType

      # @return [RpInMageRecoveryPointType] The recovery point type. Possible
      # values include: 'LatestTime', 'LatestTag', 'Custom'
      attr_accessor :recovery_point_type


      #
      # Mapper for RecoveryPlanInMageFailoverInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'InMage',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanInMageFailoverInput',
            model_properties: {
              instanceType: {
                client_side_validation: true,
                required: true,
                serialized_name: 'instanceType',
                type: {
                  name: 'String'
                }
              },
              recovery_point_type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'recoveryPointType',
                type: {
                  name: 'Enum',
                  module: 'RpInMageRecoveryPointType'
                }
              }
            }
          }
        }
      end
    end
  end
end
