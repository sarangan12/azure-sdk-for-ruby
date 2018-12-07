# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # parameters for making container API call.
    #
    class ContainerApiRequestBody

      include MsRestAzure

      # @return [String] HTTP verb of container REST API, defaults to "GET"
      attr_accessor :http_verb

      # @return [String] URI path of container REST API
      attr_accessor :uri_path

      # @return [String] Content type of container REST API request, defaults
      # to "application/json"
      attr_accessor :content_type

      # @return [String] HTTP request body of container REST API
      attr_accessor :body


      #
      # Mapper for ContainerApiRequestBody class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ContainerApiRequestBody',
          type: {
            name: 'Composite',
            class_name: 'ContainerApiRequestBody',
            model_properties: {
              http_verb: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HttpVerb',
                type: {
                  name: 'String'
                }
              },
              uri_path: {
                client_side_validation: true,
                required: true,
                serialized_name: 'UriPath',
                type: {
                  name: 'String'
                }
              },
              content_type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Content-Type',
                type: {
                  name: 'String'
                }
              },
              body: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Body',
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
