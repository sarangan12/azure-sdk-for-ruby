# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_31_preview
  module Models
    #
    # Migration Task errors
    #
    class DataMigrationError

      include MsRestAzure

      # @return [String] Error description
      attr_accessor :message

      # @return [ErrorType] Type of error. Possible values include: 'Default',
      # 'Warning', 'Error'
      attr_accessor :type


      #
      # Mapper for DataMigrationError class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DataMigrationError',
          type: {
            name: 'Composite',
            class_name: 'DataMigrationError',
            model_properties: {
              message: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'type',
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
