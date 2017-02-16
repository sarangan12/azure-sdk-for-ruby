# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.0.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CognitiveServices
  module Models
    #
    # Regenerate key parameters.
    #
    class RegenerateKeyParameters

      include MsRestAzure

      # @return [KeyName] key name to generate (Key1|Key2). Possible values
      # include: 'Key1', 'Key2'
      attr_accessor :key_name


      #
      # Mapper for RegenerateKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegenerateKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateKeyParameters',
            model_properties: {
              key_name: {
                required: false,
                serialized_name: 'keyName',
                type: {
                  name: 'Enum',
                  module: 'KeyName'
                }
              }
            }
          }
        }
      end
    end
  end
end