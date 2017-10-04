# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ApiManagement::Api_2017_03_01
  module Models
    #
    # API Export result Blob Uri.
    #
    class ApiExportResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Link to the Storage Blob containing the result of the
      # export operation. The Blob Uri is only valid for 5 minutes.
      attr_accessor :link


      #
      # Mapper for ApiExportResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApiExportResult',
          type: {
            name: 'Composite',
            class_name: 'ApiExportResult',
            model_properties: {
              link: {
                required: false,
                serialized_name: 'link',
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