# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerService::Api_2016_09_30
  module Models
    #
    # Profile for the container service master.
    #
    class ContainerServiceMasterProfile

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Number of masters (VMs) in the container service
      # cluster. Allowed values are 1, 3, and 5. The default value is 1.
      # Default value: 1 .
      attr_accessor :count

      # @return [String] DNS prefix to be used to create the FQDN for master.
      attr_accessor :dns_prefix

      # @return [String] FDQN for the master.
      attr_accessor :fqdn


      #
      # Mapper for ContainerServiceMasterProfile class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ContainerServiceMasterProfile',
          type: {
            name: 'Composite',
            class_name: 'ContainerServiceMasterProfile',
            model_properties: {
              count: {
                required: false,
                serialized_name: 'count',
                default_value: 1,
                type: {
                  name: 'Number'
                }
              },
              dns_prefix: {
                required: true,
                serialized_name: 'dnsPrefix',
                type: {
                  name: 'String'
                }
              },
              fqdn: {
                required: false,
                read_only: true,
                serialized_name: 'fqdn',
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
