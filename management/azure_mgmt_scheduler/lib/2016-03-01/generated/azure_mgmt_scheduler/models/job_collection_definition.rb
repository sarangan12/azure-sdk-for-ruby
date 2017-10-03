# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ResourcesManagement::Api_2016_03_01
  module Models
    #
    # Model object.
    #
    #
    class JobCollectionDefinition

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets the job collection resource identifier.
      attr_accessor :id

      # @return [String] Gets the job collection resource type.
      attr_accessor :type

      # @return [String] Gets or sets the job collection resource name.
      attr_accessor :name

      # @return [String] Gets or sets the storage account location.
      attr_accessor :location

      # @return [Hash{String => String}] Gets or sets the tags.
      attr_accessor :tags

      # @return [JobCollectionProperties] Gets or sets the job collection
      # properties.
      attr_accessor :properties


      #
      # Mapper for JobCollectionDefinition class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobCollectionDefinition',
          type: {
            name: 'Composite',
            class_name: 'JobCollectionDefinition',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
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
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
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
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'JobCollectionProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
