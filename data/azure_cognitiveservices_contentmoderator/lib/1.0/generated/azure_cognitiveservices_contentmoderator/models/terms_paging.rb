# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::ContentModerator::V1_0
  module Models
    #
    # Paging details.
    #
    class TermsPaging

      include MsRestAzure

      # @return [Integer] Total details.
      attr_accessor :total

      # @return [Integer] Limit details.
      attr_accessor :limit

      # @return [Integer] Offset details.
      attr_accessor :offset

      # @return [Integer] Returned text details.
      attr_accessor :returned


      #
      # Mapper for TermsPaging class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Terms_Paging',
          type: {
            name: 'Composite',
            class_name: 'TermsPaging',
            model_properties: {
              total: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Total',
                type: {
                  name: 'Number'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Limit',
                type: {
                  name: 'Number'
                }
              },
              offset: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Offset',
                type: {
                  name: 'Number'
                }
              },
              returned: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Returned',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
