# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Describes a Chaos event that gets generated when Chaos stops because
    # either the user issued a stop or the time to run was up.
    #
    class StoppedChaosEvent < ChaosEvent

      include MsRestAzure


      def initialize
        @Kind = "Stopped"
      end

      attr_accessor :Kind

      # @return [String] Describes why Chaos stopped. Chaos can stop because of
      # StopChaos API call or the timeToRun provided in ChaosParameters is
      # over.
      attr_accessor :reason


      #
      # Mapper for StoppedChaosEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stopped',
          type: {
            name: 'Composite',
            class_name: 'StoppedChaosEvent',
            model_properties: {
              time_stamp_utc: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStampUtc',
                type: {
                  name: 'DateTime'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              reason: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Reason',
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
