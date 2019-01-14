# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ContainerRegistry::Mgmt::V2018_02_01_preview
  module Models
    #
    # The result of get log link operation.
    #
    class BuildGetLogResult

      include MsRestAzure

      # @return [String] The link to logs for a azure container registry build.
      attr_accessor :log_link


      #
      # Mapper for BuildGetLogResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BuildGetLogResult',
          type: {
            name: 'Composite',
            class_name: 'BuildGetLogResult',
            model_properties: {
              log_link: {
                client_side_validation: true,
                required: false,
                serialized_name: 'logLink',
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