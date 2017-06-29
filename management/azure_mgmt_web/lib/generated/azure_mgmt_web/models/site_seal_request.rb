# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Site seal request.
    #
    class SiteSealRequest

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] Theme
      attr_accessor :light_theme

      # @return [String] Locale
      attr_accessor :locale


      #
      # Mapper for SiteSealRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteSealRequest',
          type: {
            name: 'Composite',
            class_name: 'SiteSealRequest',
            model_properties: {
              light_theme: {
                required: false,
                serialized_name: 'lightTheme',
                type: {
                  name: 'Boolean'
                }
              },
              locale: {
                required: false,
                serialized_name: 'locale',
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
