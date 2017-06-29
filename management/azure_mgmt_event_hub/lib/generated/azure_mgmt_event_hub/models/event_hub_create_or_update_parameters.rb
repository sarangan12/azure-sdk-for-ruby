# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # Parameters supplied to the Create Or Update Event Hub operation.
    #
    class EventHubCreateOrUpdateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Location of the resource.
      attr_accessor :location

      # @return [String] ARM type of the Namespace.
      attr_accessor :type

      # @return [String] Name of the Event Hub.
      attr_accessor :name

      # @return [DateTime] Exact time the Event Hub was created.
      attr_accessor :created_at

      # @return [Integer] Number of days to retain the events for this Event
      # Hub.
      attr_accessor :message_retention_in_days

      # @return [Integer] Number of partitions created for the Event Hub.
      attr_accessor :partition_count

      # @return [Array<String>] Current number of shards on the Event Hub.
      attr_accessor :partition_ids

      # @return [EntityStatus] Enumerates the possible values for the status of
      # the Event Hub. Possible values include: 'Active', 'Disabled',
      # 'Restoring', 'SendDisabled', 'ReceiveDisabled', 'Creating', 'Deleting',
      # 'Renaming', 'Unknown'
      attr_accessor :status

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at


      #
      # Mapper for EventHubCreateOrUpdateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'EventHubCreateOrUpdateParameters',
          type: {
            name: 'Composite',
            class_name: 'EventHubCreateOrUpdateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              created_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.createdAt',
                type: {
                  name: 'DateTime'
                }
              },
              message_retention_in_days: {
                required: false,
                serialized_name: 'properties.messageRetentionInDays',
                type: {
                  name: 'Number'
                }
              },
              partition_count: {
                required: false,
                serialized_name: 'properties.partitionCount',
                type: {
                  name: 'Number'
                }
              },
              partition_ids: {
                required: false,
                read_only: true,
                serialized_name: 'properties.partitionIds',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              status: {
                required: false,
                serialized_name: 'properties.status',
                type: {
                  name: 'Enum',
                  module: 'EntityStatus'
                }
              },
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
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
