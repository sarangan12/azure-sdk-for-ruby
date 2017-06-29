# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::NotificationHubs
  module Models
    #
    # Parameters supplied to the Check Name Availability for Namespace and
    # NotificationHubs.
    #
    class CheckAvailabilityParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource Id
      attr_accessor :id

      # @return [String] Resource name
      attr_accessor :name

      # @return [String] Resource type
      attr_accessor :type

      # @return [String] Resource location
      attr_accessor :location

      # @return [Hash{String => String}] Resource tags
      attr_accessor :tags

      # @return [Sku] The sku of the created namespace
      attr_accessor :sku

      # @return [Boolean] True if the name is available and can be used to
      # create new Namespace/NotificationHub. Otherwise false.
      attr_accessor :is_availiable


      #
      # Mapper for CheckAvailabilityParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CheckAvailabilityParameters',
          type: {
            name: 'Composite',
            class_name: 'CheckAvailabilityParameters',
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
                required: true,
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
                required: true,
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
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              is_availiable: {
                required: false,
                serialized_name: 'isAvailiable',
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
