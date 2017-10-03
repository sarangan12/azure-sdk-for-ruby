# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2014_04_01
  module Models
    #
    # The max per-database DTU capability.
    #
    class ElasticPoolPerDatabaseMaxDtuCapability

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] The maximum DTUs per database.
      attr_accessor :limit

      # @return [CapabilityStatus] The status of the capability. Possible
      # values include: 'Visible', 'Available', 'Default', 'Disabled'
      attr_accessor :status

      # @return [Array<ElasticPoolPerDatabaseMinDtuCapability>] The list of
      # supported min database DTUs.
      attr_accessor :supported_per_database_min_dtus


      #
      # Mapper for ElasticPoolPerDatabaseMaxDtuCapability class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPoolPerDatabaseMaxDtuCapability',
          type: {
            name: 'Composite',
            class_name: 'ElasticPoolPerDatabaseMaxDtuCapability',
            model_properties: {
              limit: {
                required: false,
                read_only: true,
                serialized_name: 'limit',
                type: {
                  name: 'Number'
                }
              },
              status: {
                required: false,
                read_only: true,
                serialized_name: 'status',
                type: {
                  name: 'Enum',
                  module: 'CapabilityStatus'
                }
              },
              supported_per_database_min_dtus: {
                required: false,
                read_only: true,
                serialized_name: 'supportedPerDatabaseMinDtus',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ElasticPoolPerDatabaseMinDtuCapabilityElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ElasticPoolPerDatabaseMinDtuCapability'
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
