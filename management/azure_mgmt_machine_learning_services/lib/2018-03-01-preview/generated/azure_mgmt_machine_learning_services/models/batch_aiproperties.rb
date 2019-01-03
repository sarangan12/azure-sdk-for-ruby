# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearningServices::Mgmt::V2018_03_01_preview
  module Models
    #
    # BatchAI properties
    #
    class BatchAIProperties

      include MsRestAzure

      # @return [String] Virtual Machine Size
      attr_accessor :vm_size

      # @return [String] Virtual Machine priority
      attr_accessor :vm_priority

      # @return [ScaleSettings] Scale settings for BatchAI
      attr_accessor :scale_settings


      #
      # Mapper for BatchAIProperties class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'BatchAI_properties',
          type: {
            name: 'Composite',
            class_name: 'BatchAIProperties',
            model_properties: {
              vm_size: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmSize',
                type: {
                  name: 'String'
                }
              },
              vm_priority: {
                client_side_validation: true,
                required: false,
                serialized_name: 'vmPriority',
                type: {
                  name: 'String'
                }
              },
              scale_settings: {
                client_side_validation: true,
                required: false,
                serialized_name: 'scaleSettings',
                type: {
                  name: 'Composite',
                  class_name: 'ScaleSettings'
                }
              }
            }
          }
        }
      end
    end
  end
end
