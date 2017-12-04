# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  module Models
    #
    # Resume job properties.
    #
    class ResumeJobParamsProperties

      include MsRestAzure

      # @return [String] Resume job comments.
      attr_accessor :comments


      #
      # Mapper for ResumeJobParamsProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ResumeJobParamsProperties',
          type: {
            name: 'Composite',
            class_name: 'ResumeJobParamsProperties',
            model_properties: {
              comments: {
                client_side_validation: true,
                required: false,
                serialized_name: 'comments',
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
