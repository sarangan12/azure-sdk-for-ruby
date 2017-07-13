# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Network
  module Models
    #
    # Path rule of URL path map of an application gateway.
    #
    class ApplicationGatewayPathRule < MsRestAzure::SubResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Array<String>] Path rules of URL path map.
      attr_accessor :paths

      # @return [SubResource] Backend address pool resource of URL path map
      # path rule.
      attr_accessor :backend_address_pool

      # @return [SubResource] Backend http settings resource of URL path map
      # path rule.
      attr_accessor :backend_http_settings

      # @return [SubResource] Redirect configuration resource of URL path map
      # path rule.
      attr_accessor :redirect_configuration

      # @return [String] Path rule of URL path map resource. Possible values
      # are: 'Updating', 'Deleting', and 'Failed'.
      attr_accessor :provisioning_state

      # @return [String] Name of the resource that is unique within a resource
      # group. This name can be used to access the resource.
      attr_accessor :name

      # @return [String] A unique read-only string that changes whenever the
      # resource is updated.
      attr_accessor :etag

      # @return [String] Type of the resource.
      attr_accessor :type


      #
      # Mapper for ApplicationGatewayPathRule class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationGatewayPathRule',
          type: {
            name: 'Composite',
            class_name: 'ApplicationGatewayPathRule',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              paths: {
                required: false,
                serialized_name: 'properties.paths',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              backend_address_pool: {
                required: false,
                serialized_name: 'properties.backendAddressPool',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              backend_http_settings: {
                required: false,
                serialized_name: 'properties.backendHttpSettings',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              redirect_configuration: {
                required: false,
                serialized_name: 'properties.redirectConfiguration',
                type: {
                  name: 'Composite',
                  class_name: 'SubResource'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
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
              etag: {
                required: false,
                serialized_name: 'etag',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
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
