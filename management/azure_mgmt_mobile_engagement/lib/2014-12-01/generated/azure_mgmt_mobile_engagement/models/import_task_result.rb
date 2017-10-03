# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement::Api_2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class ImportTaskResult < ImportTask

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Unique identifier of the import task.
      attr_accessor :id

      # @return [JobStates] The current state of the import task. Possible
      # values include: 'Queued', 'Started', 'Succeeded', 'Failed'
      attr_accessor :state

      # @return [DateTime] The date at which the import job was created.
      # The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      #
      attr_accessor :date_created

      # @return [DateTime] The date at which the import job completed (Not
      # present if not yet completed).
      # The date conforms to the following format: `yyyy-MM-ddTHH:mm:ssZ` as
      # specified by the ISO 8601 standard.
      #
      attr_accessor :date_completed

      # @return [String] Details of any errors encountered during the import,
      # if any.
      attr_accessor :error_details


      #
      # Mapper for ImportTaskResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'importTaskResult',
          type: {
            name: 'Composite',
            class_name: 'ImportTaskResult',
            model_properties: {
              storage_url: {
                required: false,
                serialized_name: 'storageUrl',
                type: {
                  name: 'String'
                }
              },
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                serialized_name: 'state',
                type: {
                  name: 'String'
                }
              },
              date_created: {
                required: false,
                serialized_name: 'dateCreated',
                type: {
                  name: 'DateTime'
                }
              },
              date_completed: {
                required: false,
                serialized_name: 'dateCompleted',
                type: {
                  name: 'DateTime'
                }
              },
              error_details: {
                required: false,
                serialized_name: 'errorDetails',
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
