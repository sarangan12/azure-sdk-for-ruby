# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::EventHub
  module Models
    #
    # Parameters supplied to the Regenerate Authorization Rule operation,
    # specifies which key neeeds to be reset.
    #
    class RegenerateAccessKeyParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [KeyType] The access key to regenerate. Possible values
      # include: 'PrimaryKey', 'SecondaryKey'
      attr_accessor :key_type

      # @return [String] Optional, if the key value provided, is set for
      # KeyType or autogenerated Key value set for keyType
      attr_accessor :key


      #
      # Mapper for RegenerateAccessKeyParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegenerateAccessKeyParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateAccessKeyParameters',
            model_properties: {
              key_type: {
                required: true,
                serialized_name: 'keyType',
                type: {
                  name: 'Enum',
                  module: 'KeyType'
                }
              },
              key: {
                required: false,
                serialized_name: 'key',
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
