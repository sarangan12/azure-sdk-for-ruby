# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Partition Health Report Created event.
    #
    class PartitionNewHealthReportEvent < PartitionEvent

      include MsRestAzure


      def initialize
        @Kind = "PartitionNewHealthReport"
      end

      attr_accessor :Kind

      # @return [String] Id of report source.
      attr_accessor :source_id

      # @return [String] Describes the property.
      attr_accessor :property

      # @return [String] Describes the property health state.
      attr_accessor :health_state

      # @return [Integer] Time to live in milli-seconds.
      attr_accessor :time_to_live_ms

      # @return [Integer] Sequence number of report.
      attr_accessor :sequence_number

      # @return [String] Description of report.
      attr_accessor :description

      # @return [Boolean] Indicates the removal when it expires.
      attr_accessor :remove_when_expired

      # @return [DateTime] Source time.
      attr_accessor :source_utc_timestamp


      #
      # Mapper for PartitionNewHealthReportEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'PartitionNewHealthReport',
          type: {
            name: 'Composite',
            class_name: 'PartitionNewHealthReportEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              category: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Category',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
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
              partition_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'PartitionId',
                type: {
                  name: 'String'
                }
              },
              source_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'SourceId',
                type: {
                  name: 'String'
                }
              },
              property: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Property',
                type: {
                  name: 'String'
                }
              },
              health_state: {
                client_side_validation: true,
                required: true,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              time_to_live_ms: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeToLiveMs',
                type: {
                  name: 'Number'
                }
              },
              sequence_number: {
                client_side_validation: true,
                required: true,
                serialized_name: 'SequenceNumber',
                type: {
                  name: 'Number'
                }
              },
              description: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Description',
                type: {
                  name: 'String'
                }
              },
              remove_when_expired: {
                client_side_validation: true,
                required: true,
                serialized_name: 'RemoveWhenExpired',
                type: {
                  name: 'Boolean'
                }
              },
              source_utc_timestamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'SourceUtcTimestamp',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
