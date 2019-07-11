# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01
  module Models
    #
    # A List of databases.
    #
    class DatabaseListResult

      include MsRestAzure

      # @return [Array<Database>] The list of databases housed in a server
      attr_accessor :value


      #
      # Mapper for DatabaseListResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DatabaseListResult',
          type: {
            name: 'Composite',
            class_name: 'DatabaseListResult',
            model_properties: {
              value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'DatabaseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Database'
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
