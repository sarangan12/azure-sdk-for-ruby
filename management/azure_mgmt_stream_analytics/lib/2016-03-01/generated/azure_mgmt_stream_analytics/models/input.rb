# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StreamAnalytics::Mgmt::V2016_03_01
  module Models
    #
    # An input object, containing all information associated with the named
    # input. All inputs are contained under a streaming job.
    #
    class Input < SubResource

      include MsRestAzure

      # @return [InputProperties] The properties that are associated with an
      # input. Required on PUT (CreateOrReplace) requests.
      attr_accessor :properties


      #
      # Mapper for Input class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Input',
          type: {
            name: 'Composite',
            class_name: 'Input',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  polymorphic_discriminator: 'type',
                  uber_parent: 'InputProperties',
                  class_name: 'InputProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
