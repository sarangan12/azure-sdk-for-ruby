# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_03_01
  module Models
    #
    # Describes the result of resource validation.
    #
    class ValidateResponse

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Result of validation.
      attr_accessor :status

      # @return [ValidateResponseError] Error details for the case when
      # validation fails.
      attr_accessor :error


      #
      # Mapper for ValidateResponse class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ValidateResponse',
          type: {
            name: 'Composite',
            class_name: 'ValidateResponse',
            model_properties: {
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              error: {
                required: false,
                serialized_name: 'error',
                type: {
                  name: 'Composite',
                  class_name: 'ValidateResponseError'
                }
              }
            }
          }
        }
      end
    end
  end
end
