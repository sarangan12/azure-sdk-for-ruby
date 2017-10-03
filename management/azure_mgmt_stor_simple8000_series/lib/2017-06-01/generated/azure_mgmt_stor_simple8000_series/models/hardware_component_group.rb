# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::StorSimple8000Series::Api_2017_06_01
  module Models
    #
    # The hardware component group.
    #
    class HardwareComponentGroup < BaseModel

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The display name the hardware component group.
      attr_accessor :display_name

      # @return [DateTime] The last updated time.
      attr_accessor :last_updated_time

      # @return [Array<HardwareComponent>] The list of hardware components.
      attr_accessor :components


      #
      # Mapper for HardwareComponentGroup class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'HardwareComponentGroup',
          type: {
            name: 'Composite',
            class_name: 'HardwareComponentGroup',
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
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'Enum',
                  module: 'Kind'
                }
              },
              display_name: {
                required: true,
                serialized_name: 'properties.displayName',
                type: {
                  name: 'String'
                }
              },
              last_updated_time: {
                required: true,
                serialized_name: 'properties.lastUpdatedTime',
                type: {
                  name: 'DateTime'
                }
              },
              components: {
                required: true,
                serialized_name: 'properties.components',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'HardwareComponentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'HardwareComponent'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
