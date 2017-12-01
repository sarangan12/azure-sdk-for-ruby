# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Database connection string information.
    #
    class ConnStringInfo

      include MsRestAzure

      # @return [String] Name of connection string.
      attr_accessor :name

      # @return [String] Connection string value.
      attr_accessor :connection_string

      # @return [ConnectionStringType] Type of database. Possible values
      # include: 'MySql', 'SQLServer', 'SQLAzure', 'Custom', 'NotificationHub',
      # 'ServiceBus', 'EventHub', 'ApiHub', 'DocDb', 'RedisCache', 'PostgreSQL'
      attr_accessor :type


      #
      # Mapper for ConnStringInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ConnStringInfo',
          type: {
            name: 'Composite',
            class_name: 'ConnStringInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              connection_string: {
                client_side_validation: true,
                required: false,
                serialized_name: 'connectionString',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ConnectionStringType'
                }
              }
            }
          }
        }
      end
    end
  end
end
