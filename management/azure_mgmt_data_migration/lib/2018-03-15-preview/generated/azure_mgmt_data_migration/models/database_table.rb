# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_03_15_preview
  module Models
    #
    # Table properties
    #
    class DatabaseTable

      include MsRestAzure

      # @return [Boolean] Indicates whether table is empty or not
      attr_accessor :has_rows

      # @return [String] Schema-qualified name of the table
      attr_accessor :name


      #
      # Mapper for DatabaseTable class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseTable',
          type: {
            name: 'Composite',
            class_name: 'DatabaseTable',
            model_properties: {
              has_rows: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'hasRows',
                type: {
                  name: 'Boolean'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
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
