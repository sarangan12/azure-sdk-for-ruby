# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ContainerRegistry::Api_2017_10_01
  module Models
    #
    # The parameters used to regenerate the login credential.
    #
    class RegenerateCredentialParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [PasswordName] Specifies name of the password which should be
      # regenerated -- password or password2. Possible values include:
      # 'password', 'password2'
      attr_accessor :name


      #
      # Mapper for RegenerateCredentialParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'RegenerateCredentialParameters',
          type: {
            name: 'Composite',
            class_name: 'RegenerateCredentialParameters',
            model_properties: {
              name: {
                required: true,
                serialized_name: 'name',
                type: {
                  name: 'Enum',
                  module: 'PasswordName'
                }
              }
            }
          }
        }
      end
    end
  end
end
