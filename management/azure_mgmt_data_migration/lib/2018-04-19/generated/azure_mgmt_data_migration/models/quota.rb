# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  module Models
    #
    # Describes a quota for or usage details about a resource
    #
    class Quota

      include MsRestAzure

      # @return [Float] The current value of the quota. If null or missing, the
      # current value cannot be determined in the context of the request.
      attr_accessor :current_value

      # @return [String] The resource ID of the quota object
      attr_accessor :id

      # @return [Float] The maximum value of the quota. If null or missing, the
      # quota has no maximum, in which case it merely tracks usage.
      attr_accessor :limit

      # @return [QuotaName] The name of the quota
      attr_accessor :name

      # @return [String] The unit for the quota, such as Count, Bytes,
      # BytesPerSecond, etc.
      attr_accessor :unit


      #
      # Mapper for Quota class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Quota',
          type: {
            name: 'Composite',
            class_name: 'Quota',
            model_properties: {
              current_value: {
                client_side_validation: true,
                required: false,
                serialized_name: 'currentValue',
                type: {
                  name: 'Double'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              limit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'limit',
                type: {
                  name: 'Double'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'Composite',
                  class_name: 'QuotaName'
                }
              },
              unit: {
                client_side_validation: true,
                required: false,
                serialized_name: 'unit',
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
