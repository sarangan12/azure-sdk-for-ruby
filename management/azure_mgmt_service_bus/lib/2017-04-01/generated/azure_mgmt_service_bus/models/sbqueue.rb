# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceBus::Mgmt::V2017_04_01
  module Models
    #
    # Description of queue Resource.
    #
    class SBQueue < Resource

      include MsRestAzure

      # @return [MessageCountDetails] Message Count Details.
      attr_accessor :count_details

      # @return [DateTime] The exact time the message was created.
      attr_accessor :created_at

      # @return [DateTime] The exact time the message was updated.
      attr_accessor :updated_at

      # @return [DateTime] Last time a message was sent, or the last time there
      # was a receive request to this queue.
      attr_accessor :accessed_at

      # @return [Integer] The size of the queue, in bytes.
      attr_accessor :size_in_bytes

      # @return [Integer] The number of messages in the queue.
      attr_accessor :message_count

      # @return [Duration] ISO 8601 timespan duration of a peek-lock; that is,
      # the amount of time that the message is locked for other receivers. The
      # maximum value for LockDuration is 5 minutes; the default value is 1
      # minute.
      attr_accessor :lock_duration

      # @return [Integer] The maximum size of the queue in megabytes, which is
      # the size of memory allocated for the queue. Default is 1024.
      attr_accessor :max_size_in_megabytes

      # @return [Boolean] A value indicating if this queue requires duplicate
      # detection.
      attr_accessor :requires_duplicate_detection

      # @return [Boolean] A value that indicates whether the queue supports the
      # concept of sessions.
      attr_accessor :requires_session

      # @return [Duration] ISO 8601 default message timespan to live value.
      # This is the duration after which the message expires, starting from
      # when the message is sent to Service Bus. This is the default value used
      # when TimeToLive is not set on a message itself.
      attr_accessor :default_message_time_to_live

      # @return [Boolean] A value that indicates whether this queue has dead
      # letter support when a message expires.
      attr_accessor :dead_lettering_on_message_expiration

      # @return [Duration] ISO 8601 timeSpan structure that defines the
      # duration of the duplicate detection history. The default value is 10
      # minutes.
      attr_accessor :duplicate_detection_history_time_window

      # @return [Integer] The maximum delivery count. A message is
      # automatically deadlettered after this number of deliveries. default
      # value is 10.
      attr_accessor :max_delivery_count

      # @return [EntityStatus] Enumerates the possible values for the status of
      # a messaging entity. Possible values include: 'Active', 'Disabled',
      # 'Restoring', 'SendDisabled', 'ReceiveDisabled', 'Creating', 'Deleting',
      # 'Renaming', 'Unknown'
      attr_accessor :status

      # @return [Duration] ISO 8061 timeSpan idle interval after which the
      # queue is automatically deleted. The minimum duration is 5 minutes.
      attr_accessor :auto_delete_on_idle

      # @return [Boolean] A value that indicates whether the queue is to be
      # partitioned across multiple message brokers.
      attr_accessor :enable_partitioning

      # @return [Boolean] A value that indicates whether Express Entities are
      # enabled. An express queue holds a message in memory temporarily before
      # writing it to persistent storage.
      attr_accessor :enable_express


      #
      # Mapper for SBQueue class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SBQueue',
          type: {
            name: 'Composite',
            class_name: 'SBQueue',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              count_details: {
                required: false,
                read_only: true,
                serialized_name: 'properties.countDetails',
                type: {
                  name: 'Composite',
                  class_name: 'MessageCountDetails'
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
              updated_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.updatedAt',
                type: {
                  name: 'DateTime'
                }
              },
              accessed_at: {
                required: false,
                read_only: true,
                serialized_name: 'properties.accessedAt',
                type: {
                  name: 'DateTime'
                }
              },
              size_in_bytes: {
                required: false,
                read_only: true,
                serialized_name: 'properties.sizeInBytes',
                type: {
                  name: 'Number'
                }
              },
              message_count: {
                required: false,
                read_only: true,
                serialized_name: 'properties.messageCount',
                type: {
                  name: 'Number'
                }
              },
              lock_duration: {
                required: false,
                serialized_name: 'properties.lockDuration',
                type: {
                  name: 'TimeSpan'
                }
              },
              max_size_in_megabytes: {
                required: false,
                serialized_name: 'properties.maxSizeInMegabytes',
                type: {
                  name: 'Number'
                }
              },
              requires_duplicate_detection: {
                required: false,
                serialized_name: 'properties.requiresDuplicateDetection',
                type: {
                  name: 'Boolean'
                }
              },
              requires_session: {
                required: false,
                serialized_name: 'properties.requiresSession',
                type: {
                  name: 'Boolean'
                }
              },
              default_message_time_to_live: {
                required: false,
                serialized_name: 'properties.defaultMessageTimeToLive',
                type: {
                  name: 'TimeSpan'
                }
              },
              dead_lettering_on_message_expiration: {
                required: false,
                serialized_name: 'properties.deadLetteringOnMessageExpiration',
                type: {
                  name: 'Boolean'
                }
              },
              duplicate_detection_history_time_window: {
                required: false,
                serialized_name: 'properties.duplicateDetectionHistoryTimeWindow',
                type: {
                  name: 'TimeSpan'
                }
              },
              max_delivery_count: {
                required: false,
                serialized_name: 'properties.maxDeliveryCount',
                type: {
                  name: 'Number'
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
              auto_delete_on_idle: {
                required: false,
                serialized_name: 'properties.autoDeleteOnIdle',
                type: {
                  name: 'TimeSpan'
                }
              },
              enable_partitioning: {
                required: false,
                serialized_name: 'properties.enablePartitioning',
                type: {
                  name: 'Boolean'
                }
              },
              enable_express: {
                required: false,
                serialized_name: 'properties.enableExpress',
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
