# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CDN
  module Models
    #
    # Deep created origins within a CDN endpoint.
    #
    class DeepCreatedOrigin

      include MsRestAzure

      # @return [String] Origin name
      attr_accessor :name

      # @return [String] The address of the origin. Domain names, IPv4
      # addresses, and IPv6 addresses are supported.
      attr_accessor :host_name

      # @return [Integer] The value of the HTTP port. Must be between 1 and
      # 65535
      attr_accessor :http_port

      # @return [Integer] The value of the HTTPS port. Must be between 1 and
      # 65535
      attr_accessor :https_port


      #
      # Mapper for DeepCreatedOrigin class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'DeepCreatedOrigin',
          type: {
            name: 'Composite',
            class_name: 'DeepCreatedOrigin',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              host_name: {
                required: true,
                serialized_name: 'properties.hostName',
                type: {
                  name: 'String'
                }
              },
              http_port: {
                required: false,
                serialized_name: 'properties.httpPort',
                type: {
                  name: 'Number'
                }
              },
              https_port: {
                required: false,
                serialized_name: 'properties.httpsPort',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
