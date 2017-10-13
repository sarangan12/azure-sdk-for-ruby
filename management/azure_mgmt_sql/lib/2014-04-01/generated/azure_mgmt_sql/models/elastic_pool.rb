# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::SQL::Mgmt::V2014_04_01
  module Models
    #
    # Represents a database elastic pool.
    #
    class ElasticPool < TrackedResource

      include MsRestAzure

      # @return [DateTime] The creation date of the elastic pool (ISO8601
      # format).
      attr_accessor :creation_date

      # @return [ElasticPoolState] The state of the elastic pool. Possible
      # values include: 'Creating', 'Ready', 'Disabled'
      attr_accessor :state

      # @return [ElasticPoolEdition] The edition of the elastic pool. Possible
      # values include: 'Basic', 'Standard', 'Premium'
      attr_accessor :edition

      # @return [Integer] The total shared DTU for the database elastic pool.
      attr_accessor :dtu

      # @return [Integer] The maximum DTU any one database can consume.
      attr_accessor :database_dtu_max

      # @return [Integer] The minimum DTU all databases are guaranteed.
      attr_accessor :database_dtu_min

      # @return [Integer] Gets storage limit for the database elastic pool in
      # MB.
      attr_accessor :storage_mb

      # @return [String] Kind of elastic pool.  This is metadata used for the
      # Azure portal experience.
      attr_accessor :kind


      #
      # Mapper for ElasticPool class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ElasticPool',
          type: {
            name: 'Composite',
            class_name: 'ElasticPool',
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
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              creation_date: {
                required: false,
                read_only: true,
                serialized_name: 'properties.creationDate',
                type: {
                  name: 'DateTime'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.state',
                type: {
                  name: 'String'
                }
              },
              edition: {
                required: false,
                serialized_name: 'properties.edition',
                type: {
                  name: 'String'
                }
              },
              dtu: {
                required: false,
                serialized_name: 'properties.dtu',
                type: {
                  name: 'Number'
                }
              },
              database_dtu_max: {
                required: false,
                serialized_name: 'properties.databaseDtuMax',
                type: {
                  name: 'Number'
                }
              },
              database_dtu_min: {
                required: false,
                serialized_name: 'properties.databaseDtuMin',
                type: {
                  name: 'Number'
                }
              },
              storage_mb: {
                required: false,
                serialized_name: 'properties.storageMB',
                type: {
                  name: 'Number'
                }
              },
              kind: {
                required: false,
                read_only: true,
                serialized_name: 'kind',
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
