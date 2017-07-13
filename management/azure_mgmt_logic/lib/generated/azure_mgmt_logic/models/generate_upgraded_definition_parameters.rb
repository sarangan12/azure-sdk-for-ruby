# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  module Models
    #
    # The parameters to generate upgraded definition.
    #
    class GenerateUpgradedDefinitionParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The target schema version.
      attr_accessor :target_schema_version


      #
      # Mapper for GenerateUpgradedDefinitionParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'GenerateUpgradedDefinitionParameters',
          type: {
            name: 'Composite',
            class_name: 'GenerateUpgradedDefinitionParameters',
            model_properties: {
              target_schema_version: {
                required: false,
                serialized_name: 'targetSchemaVersion',
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
