# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Compute::Mgmt::V2017_03_30
  module Models
    #
    # Describes a Virtual Machine Scale Set.
    #
    class VirtualMachineScaleSetUpdate < UpdateResource

      include MsRestAzure

      # @return [Sku] The virtual machine scale set sku.
      attr_accessor :sku

      # @return [Plan] The purchase plan when deploying a virtual machine scale
      # set from VM Marketplace images.
      attr_accessor :plan

      # @return [UpgradePolicy] The upgrade policy.
      attr_accessor :upgrade_policy

      # @return [VirtualMachineScaleSetUpdateVMProfile] The virtual machine
      # profile.
      attr_accessor :virtual_machine_profile

      # @return [Boolean] Specifies whether the Virtual Machine Scale Set
      # should be overprovisioned.
      attr_accessor :overprovision

      # @return [Boolean] When true this limits the scale set to a single
      # placement group, of max size 100 virtual machines.
      attr_accessor :single_placement_group

      # @return [VirtualMachineScaleSetIdentity] The identity of the virtual
      # machine scale set, if configured.
      attr_accessor :identity


      #
      # Mapper for VirtualMachineScaleSetUpdate class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'VirtualMachineScaleSetUpdate',
          type: {
            name: 'Composite',
            class_name: 'VirtualMachineScaleSetUpdate',
            model_properties: {
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              sku: {
                required: false,
                serialized_name: 'sku',
                type: {
                  name: 'Composite',
                  class_name: 'Sku'
                }
              },
              plan: {
                required: false,
                serialized_name: 'plan',
                type: {
                  name: 'Composite',
                  class_name: 'Plan'
                }
              },
              upgrade_policy: {
                required: false,
                serialized_name: 'properties.upgradePolicy',
                type: {
                  name: 'Composite',
                  class_name: 'UpgradePolicy'
                }
              },
              virtual_machine_profile: {
                required: false,
                serialized_name: 'properties.virtualMachineProfile',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetUpdateVMProfile'
                }
              },
              overprovision: {
                required: false,
                serialized_name: 'properties.overprovision',
                type: {
                  name: 'Boolean'
                }
              },
              single_placement_group: {
                required: false,
                serialized_name: 'properties.singlePlacementGroup',
                type: {
                  name: 'Boolean'
                }
              },
              identity: {
                required: false,
                serialized_name: 'identity',
                type: {
                  name: 'Composite',
                  class_name: 'VirtualMachineScaleSetIdentity'
                }
              }
            }
          }
        }
      end
    end
  end
end
