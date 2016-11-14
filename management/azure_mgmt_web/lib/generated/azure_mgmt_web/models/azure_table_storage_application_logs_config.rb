# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Application logs to azure table storage configuration
    #
    class AzureTableStorageApplicationLogsConfig

      include MsRestAzure

      # @return [LogLevel] Log level. Possible values include: 'Off',
      # 'Verbose', 'Information', 'Warning', 'Error'
      attr_accessor :level

      # @return [String] SAS url to an azure table with add/query/delete
      # permissions
      attr_accessor :sas_url


      #
      # Mapper for AzureTableStorageApplicationLogsConfig class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AzureTableStorageApplicationLogsConfig',
          type: {
            name: 'Composite',
            class_name: 'AzureTableStorageApplicationLogsConfig',
            model_properties: {
              level: {
                required: false,
                serialized_name: 'level',
                type: {
                  name: 'Enum',
                  module: 'LogLevel'
                }
              },
              sas_url: {
                required: false,
                serialized_name: 'sasUrl',
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