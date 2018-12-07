# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Represents a safety check performed by service fabric before continuing
    # with the operations. These checks ensure the availability of the service
    # and the reliability of the state.
    #
    class SafetyCheck

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["PartitionSafetyCheck"] = "PartitionSafetyCheck"
      @@discriminatorMap["EnsureAvailability"] = "EnsureAvailabilitySafetyCheck"
      @@discriminatorMap["EnsurePartitionQuorum"] = "EnsurePartitionQurumSafetyCheck"
      @@discriminatorMap["EnsureSeedNodeQuorum"] = "SeedNodeSafetyCheck"
      @@discriminatorMap["WaitForInbuildReplica"] = "WaitForInbuildReplicaSafetyCheck"
      @@discriminatorMap["WaitForPrimaryPlacement"] = "WaitForPrimaryPlacementSafetyCheck"
      @@discriminatorMap["WaitForPrimarySwap"] = "WaitForPrimarySwapSafetyCheck"
      @@discriminatorMap["WaitForReconfiguration"] = "WaitForReconfigurationSafetyCheck"

      def initialize
        @Kind = "SafetyCheck"
      end

      attr_accessor :Kind


      #
      # Mapper for SafetyCheck class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SafetyCheck',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'Kind',
            uber_parent: 'SafetyCheck',
            class_name: 'SafetyCheck',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
