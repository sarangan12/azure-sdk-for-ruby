# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_3_0_9
  module Models
    #
    # Describes the parameters for provisioning a cluster.
    #
    class ProvisionFabricDescription

      include MsRestAzure

      # @return [String] The cluster code package file path.
      attr_accessor :code_file_path

      # @return [String] The cluster manifest file path.
      attr_accessor :cluster_manifest_file_path


      #
      # Mapper for ProvisionFabricDescription class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ProvisionFabricDescription',
          type: {
            name: 'Composite',
            class_name: 'ProvisionFabricDescription',
            model_properties: {
              code_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodeFilePath',
                type: {
                  name: 'String'
                }
              },
              cluster_manifest_file_path: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ClusterManifestFilePath',
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
