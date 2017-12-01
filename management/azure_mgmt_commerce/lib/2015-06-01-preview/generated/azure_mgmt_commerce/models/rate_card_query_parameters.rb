# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Commerce::Mgmt::V2015_06_01_preview
  module Models
    #
    # Parameters that are used in the odata $filter query parameter for
    # providing RateCard information.
    #
    class RateCardQueryParameters

      include MsRestAzure

      # @return [String] The Offer ID parameter consists of the 'MS-AZR-'
      # prefix, plus the Offer ID number (e.g., MS-AZR-0026P). See
      # https://azure.microsoft.com/en-us/support/legal/offer-details/ for more
      # information on the list of available Offer IDs, country/region
      # availability, and billing currency.
      attr_accessor :offer_durable_id

      # @return [String] The currency in which the rates need to be provided.
      attr_accessor :currency

      # @return [String] The culture in which the resource metadata needs to be
      # localized.
      attr_accessor :locale

      # @return [String] 2 letter ISO code where the offer was purchased.
      attr_accessor :region_info


      #
      # Mapper for RateCardQueryParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RateCardQueryParameters',
          type: {
            name: 'Composite',
            class_name: 'RateCardQueryParameters',
            model_properties: {
              offer_durable_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'OfferDurableId',
                constraints: {
                  Pattern: '^MS-AZR-\d{4}P(-\d{4}P)*$'
                },
                type: {
                  name: 'String'
                }
              },
              currency: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Currency',
                type: {
                  name: 'String'
                }
              },
              locale: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Locale',
                type: {
                  name: 'String'
                }
              },
              region_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'RegionInfo',
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
