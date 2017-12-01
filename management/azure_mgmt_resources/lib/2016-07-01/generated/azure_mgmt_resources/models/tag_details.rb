# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Resources::Mgmt::V2016_07_01
  module Models
    #
    # Tag details.
    #
    class TagDetails

      include MsRestAzure

      # @return [String] The tag ID.
      attr_accessor :id

      # @return [String] The tag name.
      attr_accessor :tag_name

      # @return [TagCount] The tag count.
      attr_accessor :count

      # @return [Array<TagValue>] The list of tag values.
      attr_accessor :values


      #
      # Mapper for TagDetails class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'TagDetails',
          type: {
            name: 'Composite',
            class_name: 'TagDetails',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              tag_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'tagName',
                type: {
                  name: 'String'
                }
              },
              count: {
                client_side_validation: true,
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Composite',
                  class_name: 'TagCount'
                }
              },
              values: {
                client_side_validation: true,
                required: false,
                serialized_name: 'values',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'TagValueElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'TagValue'
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
