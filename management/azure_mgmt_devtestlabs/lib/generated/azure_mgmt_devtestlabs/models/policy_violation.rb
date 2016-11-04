# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Policy violation.
    #
    class PolicyViolation

      include MsRestAzure

      # @return [String] The code of the policy violation.
      attr_accessor :code

      # @return [String] The message of the policy violation.
      attr_accessor :message


      #
      # Mapper for PolicyViolation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicyViolation',
          type: {
            name: 'Composite',
            class_name: 'PolicyViolation',
            model_properties: {
              code: {
                required: false,
                serialized_name: 'code',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
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
