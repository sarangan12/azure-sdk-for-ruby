# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Describes a request to cancel a repair task.
    #
    # This type supports the Service Fabric platform; it is not meant to be
    # used directly from your code.
    #
    class RepairTaskCancelDescription

      include MsRestAzure

      # @return [String] The ID of the repair task.
      attr_accessor :task_id

      # @return [String] The current version number of the repair task. If
      # non-zero, then the request will only succeed if this value matches the
      # actual current version of the repair task. If zero, then no version
      # check is performed.
      attr_accessor :version

      # @return [Boolean] _True_ if the repair should be stopped as soon as
      # possible even if it has already started executing. _False_ if the
      # repair should be cancelled only if execution has not yet started.
      attr_accessor :request_abort


      #
      # Mapper for RepairTaskCancelDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RepairTaskCancelDescription',
          type: {
            name: 'Composite',
            class_name: 'RepairTaskCancelDescription',
            model_properties: {
              task_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TaskId',
                type: {
                  name: 'String'
                }
              },
              version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Version',
                type: {
                  name: 'String'
                }
              },
              request_abort: {
                client_side_validation: true,
                required: false,
                serialized_name: 'RequestAbort',
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
