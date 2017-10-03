# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_03_01
  module Models
    #
    # Paged Quota Counter list representation.
    #
    class QuotaCounterCollection

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<QuotaCounterContract>] Quota counter values.
      attr_accessor :value

      # @return [Integer] Total record count number across all pages.
      attr_accessor :count

      # @return [String] Next page link if any.
      attr_accessor :next_link


      #
      # Mapper for QuotaCounterCollection class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'QuotaCounterCollection',
          type: {
            name: 'Composite',
            class_name: 'QuotaCounterCollection',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'QuotaCounterContractElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'QuotaCounterContract'
                      }
                  }
                }
              },
              count: {
                required: false,
                serialized_name: 'count',
                type: {
                  name: 'Number'
                }
              },
              next_link: {
                required: false,
                serialized_name: 'nextLink',
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
