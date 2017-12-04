# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Recovery plan unplanned failover input.
    #
    class RecoveryPlanUnplannedFailoverInput

      include MsRestAzure

      # @return [RecoveryPlanUnplannedFailoverInputProperties] The recovery
      # plan unplanned failover input properties.
      attr_accessor :properties


      #
      # Mapper for RecoveryPlanUnplannedFailoverInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RecoveryPlanUnplannedFailoverInput',
          type: {
            name: 'Composite',
            class_name: 'RecoveryPlanUnplannedFailoverInput',
            model_properties: {
              properties: {
                client_side_validation: true,
                required: true,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'RecoveryPlanUnplannedFailoverInputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
