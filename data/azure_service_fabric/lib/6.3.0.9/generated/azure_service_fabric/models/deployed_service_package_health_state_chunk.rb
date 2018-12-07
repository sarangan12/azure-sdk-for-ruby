# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Represents the health state chunk of a deployed service package, which
    # contains the service manifest name and the service package aggregated
    # health state.
    #
    class DeployedServicePackageHealthStateChunk < EntityHealthStateChunk

      include MsRestAzure

      # @return [String] The name of the service manifest.
      attr_accessor :service_manifest_name

      # @return [String] The ActivationId of a deployed service package. If
      # ServicePackageActivationMode specified at the time of creating the
      # service
      # is 'SharedProcess' (or if it is not specified, in which case it
      # defaults to 'SharedProcess'), then value of ServicePackageActivationId
      # is always an empty string.
      attr_accessor :service_package_activation_id


      #
      # Mapper for DeployedServicePackageHealthStateChunk class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'DeployedServicePackageHealthStateChunk',
          type: {
            name: 'Composite',
            class_name: 'DeployedServicePackageHealthStateChunk',
            model_properties: {
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              service_manifest_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServiceManifestName',
                type: {
                  name: 'String'
                }
              },
              service_package_activation_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ServicePackageActivationId',
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
