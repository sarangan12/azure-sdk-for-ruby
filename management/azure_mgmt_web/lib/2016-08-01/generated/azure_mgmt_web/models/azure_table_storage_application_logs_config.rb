# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Application logs to Azure table storage configuration.
    #
    class AzureTableStorageApplicationLogsConfig

      include MsRestAzure

      include MsRest::JSONable
      # @return [LogLevel] Log level. Possible values include: 'Off',
      # 'Verbose', 'Information', 'Warning', 'Error'
      attr_accessor :level

      # @return [String] SAS URL to an Azure table with add/query/delete
      # permissions.
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
                required: true,
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
