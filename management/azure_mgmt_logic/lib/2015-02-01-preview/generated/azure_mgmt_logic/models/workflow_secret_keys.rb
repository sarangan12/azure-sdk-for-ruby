# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Logic::Mgmt::V2015_02_01_preview
  module Models
    #
    # Model object.
    #
    #
    class WorkflowSecretKeys

      include MsRestAzure

      # @return [String] Gets the primary secret key.
      attr_accessor :primary_secret_key

      # @return [String] Gets the secondary secret key.
      attr_accessor :secondary_secret_key


      #
      # Mapper for WorkflowSecretKeys class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'WorkflowSecretKeys',
          type: {
            name: 'Composite',
            class_name: 'WorkflowSecretKeys',
            model_properties: {
              primary_secret_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'primarySecretKey',
                type: {
                  name: 'String'
                }
              },
              secondary_secret_key: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'secondarySecretKey',
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
