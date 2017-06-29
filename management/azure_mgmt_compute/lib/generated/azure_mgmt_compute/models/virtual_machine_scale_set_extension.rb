# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Describes a Virtual Machine Scale Set Extension.
    #
    class VirtualMachineScaleSetExtension < MsRestAzure::SubResourceReadOnly

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The name of the extension.
      attr_accessor :name

      # @return [String] The name of the extension handler publisher.
      attr_accessor :publisher

      # @return [String] The type of the extension handler.
      attr_accessor :type

      # @return [String] The type version of the extension handler.
      attr_accessor :type_handler_version

      # @return [Boolean] Whether the extension handler should be automatically
      # upgraded across minor versions.
      attr_accessor :auto_upgrade_minor_version

      # @return Json formatted public settings for the extension.
      attr_accessor :settings

      # @return Json formatted protected settings for the extension.
      attr_accessor :protected_settings

      # @return [String] The provisioning state, which only appears in the
      # response.
      attr_accessor :provisioning_state


      #
      # Mapper for VirtualMachineScaleSetExtension class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetExtension',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetExtension',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              publisher: {
                required: false,
                serialized_name: 'properties.publisher',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'properties.type',
                type: {
                  name: 'String'
                }
              },
              type_handler_version: {
                required: false,
                serialized_name: 'properties.typeHandlerVersion',
                type: {
                  name: 'String'
                }
              },
              auto_upgrade_minor_version: {
                required: false,
                serialized_name: 'properties.autoUpgradeMinorVersion',
                type: {
                  name: 'Boolean'
                }
              },
              settings: {
                required: false,
                serialized_name: 'properties.settings',
                type: {
                  name: 'Object'
                }
              },
              protected_settings: {
                required: false,
                serialized_name: 'properties.protectedSettings',
                type: {
                  name: 'Object'
                }
              },
              provisioning_state: {
                required: false,
                read_only: true,
                serialized_name: 'properties.provisioningState',
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
