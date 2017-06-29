# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Model object.
    #
    #
    class SubResourceReadOnly

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource Id
      attr_accessor :id


      #
      # Mapper for SubResourceReadOnly class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubResourceReadOnly',
          type: {
            name: 'Composite',
            class_name: 'SubResourceReadOnly',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
