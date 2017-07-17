# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Properties of an artifact.
    #
    class ArtifactInstallProperties

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The artifact's identifier.
      attr_accessor :artifact_id

      # @return [Array<ArtifactParameterProperties>] The parameters of the
      # artifact.
      attr_accessor :parameters

      # @return [String] The status of the artifact.
      attr_accessor :status

      # @return [String] The status message from the deployment.
      attr_accessor :deployment_status_message

      # @return [String] The status message from the virtual machine extension.
      attr_accessor :vm_extension_status_message

      # @return [DateTime] The time that the artifact starts to install on the
      # virtual machine.
      attr_accessor :install_time


      #
      # Mapper for ArtifactInstallProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ArtifactInstallProperties',
          type: {
            name: 'Composite',
            class_name: 'ArtifactInstallProperties',
            model_properties: {
              artifact_id: {
                required: false,
                serialized_name: 'artifactId',
                type: {
                  name: 'String'
                }
              },
              parameters: {
                required: false,
                serialized_name: 'parameters',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ArtifactParameterPropertiesElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ArtifactParameterProperties'
                      }
                  }
                }
              },
              status: {
                required: false,
                serialized_name: 'status',
                type: {
                  name: 'String'
                }
              },
              deployment_status_message: {
                required: false,
                serialized_name: 'deploymentStatusMessage',
                type: {
                  name: 'String'
                }
              },
              vm_extension_status_message: {
                required: false,
                serialized_name: 'vmExtensionStatusMessage',
                type: {
                  name: 'String'
                }
              },
              install_time: {
                required: false,
                serialized_name: 'installTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
