# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Schedules applicable to a virtual machine. The schedules may have been
    # defined on a VM or on lab level.
    #
    class ApplicableSchedule < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Schedule] The auto-shutdown schedule, if one has been set at
      # the lab or lab resource level.
      attr_accessor :lab_vms_shutdown

      # @return [Schedule] The auto-startup schedule, if one has been set at
      # the lab or lab resource level.
      attr_accessor :lab_vms_startup


      #
      # Mapper for ApplicableSchedule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicableSchedule',
          type: {
            name: 'Composite',
            class_name: 'ApplicableSchedule',
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
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              lab_vms_shutdown: {
                required: false,
                serialized_name: 'properties.labVmsShutdown',
                type: {
                  name: 'Composite',
                  class_name: 'Schedule'
                }
              },
              lab_vms_startup: {
                required: false,
                serialized_name: 'properties.labVmsStartup',
                type: {
                  name: 'Composite',
                  class_name: 'Schedule'
                }
              }
            }
          }
        }
      end
    end
  end
end
