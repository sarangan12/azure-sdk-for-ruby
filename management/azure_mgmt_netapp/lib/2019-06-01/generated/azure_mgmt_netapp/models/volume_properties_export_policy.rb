# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NetApp::Mgmt::V2019_06_01
  module Models
    #
    # exportPolicy

    # Set of export policy rules
    #
    class VolumePropertiesExportPolicy

      include MsRestAzure

      # @return [Array<ExportPolicyRule>] Export policy rule. Export policy
      # rule
      attr_accessor :rules


      #
      # Mapper for VolumePropertiesExportPolicy class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'volumeProperties_exportPolicy',
          type: {
            name: 'Composite',
            class_name: 'VolumePropertiesExportPolicy',
            model_properties: {
              rules: {
                client_side_validation: true,
                required: false,
                serialized_name: 'rules',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'ExportPolicyRuleElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ExportPolicyRule'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
