# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network::Api_2017_09_01
  module Models
    #
    # List of available countries with details.
    #
    class AvailableProvidersList

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<AvailableProvidersListCountry>] List of available
      # countries.
      attr_accessor :countries


      #
      # Mapper for AvailableProvidersList class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AvailableProvidersList',
          type: {
            name: 'Composite',
            class_name: 'AvailableProvidersList',
            model_properties: {
              countries: {
                required: true,
                serialized_name: 'countries',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'AvailableProvidersListCountryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'AvailableProvidersListCountry'
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
