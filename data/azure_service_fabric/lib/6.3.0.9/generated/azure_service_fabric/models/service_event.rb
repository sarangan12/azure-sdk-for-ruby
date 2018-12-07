# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents the base for all Service Events.
    #
    class ServiceEvent < FabricEvent

      include MsRestAzure


      def initialize
        @Kind = "ServiceEvent"
      end

      attr_accessor :Kind

      # @return [String] The identity of the service. This ID is an encoded
      # representation of the service name. This is used in the REST APIs to
      # identify the service resource.
      # Starting in version 6.0, hierarchical names are delimited with the "\~"
      # character. For example, if the service name is
      # "fabric:/myapp/app1/svc1",
      # the service identity would be "myapp~app1\~svc1" in 6.0+ and
      # "myapp/app1/svc1" in previous versions.
      attr_accessor :service_id


      #
      # Mapper for ServiceEvent class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ServiceEvent',
          type: {
            name: 'Composite',
            class_name: 'ServiceEvent',
            model_properties: {
              event_instance_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'EventInstanceId',
                type: {
                  name: 'String'
                }
              },
              time_stamp: {
                client_side_validation: true,
                required: true,
                serialized_name: 'TimeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              has_correlated_events: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HasCorrelatedEvents',
                type: {
                  name: 'Boolean'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              service_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceId',
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
