# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::IotHub::Api_2016_02_03
  module Models
    #
    # The JSON-serialized array of IotHubQuotaMetricInfo objects with a next
    # link.
    #
    class IotHubQuotaMetricInfoListResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<IotHubQuotaMetricInfo>] The array of quota metrics
      # objects.
      attr_accessor :value

      # @return [String] The next link.
      attr_accessor :next_link

      # return [Proc] with next page method call.
      attr_accessor :next_method

      #
      # Gets the rest of the items for the request, enabling auto-pagination.
      #
      # @return [Array<IotHubQuotaMetricInfo>] operation results.
      #
      def get_all_items
        items = @value
        page = self
        while page.next_link != nil do
          page = page.get_next_page
          items.concat(page.value)
        end
        items
      end

      #
      # Gets the next page of results.
      #
      # @return [IotHubQuotaMetricInfoListResult] with next page content.
      #
      def get_next_page
        response = @next_method.call(@next_link).value! unless @next_method.nil?
        unless response.nil?
          @next_link = response.body.next_link
          @value = response.body.value
          self
        end
      end

      #
      # Mapper for IotHubQuotaMetricInfoListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'IotHubQuotaMetricInfoListResult',
          type: {
            name: 'Composite',
            class_name: 'IotHubQuotaMetricInfoListResult',
            model_properties: {
              value: {
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'IotHubQuotaMetricInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'IotHubQuotaMetricInfo'
                      }
                  }
                }
              },
              next_link: {
                required: false,
                read_only: true,
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
