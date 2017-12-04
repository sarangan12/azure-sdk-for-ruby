# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # A database restore point.
    #
    class RestorePoint < ProxyResource

      include MsRestAzure

      # @return [RestorePointType] The restore point type of the database
      # restore point. Possible values include: 'DISCRETE', 'CONTINUOUS'
      attr_accessor :restore_point_type

      # @return [DateTime] Restore point creation time (ISO8601 format).
      # Populated when restorePointType = CONTINUOUS. Null otherwise.
      attr_accessor :restore_point_creation_date

      # @return [DateTime] Earliest restore time (ISO8601 format). Populated
      # when restorePointType = DISCRETE. Null otherwise.
      attr_accessor :earliest_restore_date


      #
      # Mapper for RestorePoint class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'RestorePoint',
          type: {
            name: 'Composite',
            class_name: 'RestorePoint',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
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
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              restore_point_type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.restorePointType',
                type: {
                  name: 'Enum',
                  module: 'RestorePointType'
                }
              },
              restore_point_creation_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.restorePointCreationDate',
                type: {
                  name: 'DateTime'
                }
              },
              earliest_restore_date: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'properties.earliestRestoreDate',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
