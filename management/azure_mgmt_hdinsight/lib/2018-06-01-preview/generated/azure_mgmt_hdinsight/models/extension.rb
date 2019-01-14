# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Hdinsight::Mgmt::V2018_06_01_preview
  module Models
    #
    # Cluster monitoring extensions
    #
    class Extension

      include MsRestAzure

      # @return [String] The workspace ID for the cluster monitoring extension.
      attr_accessor :workspace_id

      # @return [String] The certificate for the cluster monitoring extensions.
      attr_accessor :primary_key


      #
      # Mapper for Extension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Extension',
          type: {
            name: 'Composite',
            class_name: 'Extension',
            model_properties: {
              workspace_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'workspaceId',
                type: {
                  name: 'String'
                }
              },
              primary_key: {
                client_side_validation: true,
                required: false,
                serialized_name: 'primaryKey',
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
