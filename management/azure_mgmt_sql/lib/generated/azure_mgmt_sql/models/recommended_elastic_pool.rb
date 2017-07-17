# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL
  module Models
    #
    # Represents a recommented elastic pool.
    #
    class RecommendedElasticPool < ProxyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [ElasticPoolEdition] The edition of the recommended elastic
      # pool. The ElasticPoolEdition enumeration contains all the valid
      # editions. Possible values include: 'Basic', 'Standard', 'Premium'
      attr_accessor :database_edition

      # @return [Float] The DTU for the recommended elastic pool.
      attr_accessor :dtu

      # @return [Float] The minimum DTU for the database.
      attr_accessor :database_dtu_min

      # @return [Float] The maximum DTU for the database.
      attr_accessor :database_dtu_max

      # @return [Float] Gets storage size in megabytes.
      attr_accessor :storage_mb

      # @return [DateTime] The observation period start (ISO8601 format).
      attr_accessor :observation_period_start

      # @return [DateTime] The observation period start (ISO8601 format).
      attr_accessor :observation_period_end

      # @return [Float] Gets maximum observed DTU.
      attr_accessor :max_observed_dtu

      # @return [Float] Gets maximum observed storage in megabytes.
      attr_accessor :max_observed_storage_mb

      # @return [Array<Database>] The list of databases in this pool. Expanded
      # property
      attr_accessor :databases

      # @return [Array<RecommendedElasticPoolMetric>] The list of databases
      # housed in the server. Expanded property
      attr_accessor :metrics


      #
      # Mapper for RecommendedElasticPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RecommendedElasticPool',
          type: {
            name: 'Composite',
            class_name: 'RecommendedElasticPool',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              database_edition: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databaseEdition',
                type: {
                  name: 'String'
                }
              },
              dtu: {
                required: false,
                serialized_name: 'properties.dtu',
                type: {
                  name: 'Double'
                }
              },
              database_dtu_min: {
                required: false,
                serialized_name: 'properties.databaseDtuMin',
                type: {
                  name: 'Double'
                }
              },
              database_dtu_max: {
                required: false,
                serialized_name: 'properties.databaseDtuMax',
                type: {
                  name: 'Double'
                }
              },
              storage_mb: {
                required: false,
                serialized_name: 'properties.storageMB',
                type: {
                  name: 'Double'
                }
              },
              observation_period_start: {
                required: false,
                read_only: true,
                serialized_name: 'properties.observationPeriodStart',
                type: {
                  name: 'DateTime'
                }
              },
              observation_period_end: {
                required: false,
                read_only: true,
                serialized_name: 'properties.observationPeriodEnd',
                type: {
                  name: 'DateTime'
                }
              },
              max_observed_dtu: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxObservedDtu',
                type: {
                  name: 'Double'
                }
              },
              max_observed_storage_mb: {
                required: false,
                read_only: true,
                serialized_name: 'properties.maxObservedStorageMB',
                type: {
                  name: 'Double'
                }
              },
              databases: {
                required: false,
                read_only: true,
                serialized_name: 'properties.databases',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'DatabaseElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Database'
                      }
                  }
                }
              },
              metrics: {
                required: false,
                read_only: true,
                serialized_name: 'properties.metrics',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'RecommendedElasticPoolMetricElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'RecommendedElasticPoolMetric'
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
