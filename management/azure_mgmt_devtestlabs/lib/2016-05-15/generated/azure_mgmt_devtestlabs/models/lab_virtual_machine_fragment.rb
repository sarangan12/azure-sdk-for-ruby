# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs::Api_2016_05_15
  module Models
    #
    # A virtual machine.
    #
    class LabVirtualMachineFragment < MsRestAzure::Resource

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The notes of the virtual machine.
      attr_accessor :notes

      # @return [String] The object identifier of the owner of the virtual
      # machine.
      attr_accessor :owner_object_id

      # @return [String] The user principal name of the virtual machine owner.
      attr_accessor :owner_user_principal_name

      # @return [String] The object identifier of the creator of the virtual
      # machine.
      attr_accessor :created_by_user_id

      # @return [String] The email address of creator of the virtual machine.
      attr_accessor :created_by_user

      # @return [DateTime] The creation date of the virtual machine.
      attr_accessor :created_date

      # @return [String] The custom image identifier of the virtual machine.
      attr_accessor :custom_image_id

      # @return [String] The OS type of the virtual machine.
      attr_accessor :os_type

      # @return [String] The size of the virtual machine.
      attr_accessor :size

      # @return [String] The user name of the virtual machine.
      attr_accessor :user_name

      # @return [String] The password of the virtual machine administrator.
      attr_accessor :password

      # @return [String] The SSH key of the virtual machine administrator.
      attr_accessor :ssh_key

      # @return [Boolean] Indicates whether this virtual machine uses an SSH
      # key for authentication.
      attr_accessor :is_authentication_with_ssh_key

      # @return [String] The fully-qualified domain name of the virtual
      # machine.
      attr_accessor :fqdn

      # @return [String] The lab subnet name of the virtual machine.
      attr_accessor :lab_subnet_name

      # @return [String] The lab virtual network identifier of the virtual
      # machine.
      attr_accessor :lab_virtual_network_id

      # @return [Boolean] Indicates whether the virtual machine is to be
      # created without a public IP address.
      attr_accessor :disallow_public_ip_address

      # @return [Array<ArtifactInstallPropertiesFragment>] The artifacts to be
      # installed on the virtual machine.
      attr_accessor :artifacts

      # @return [ArtifactDeploymentStatusPropertiesFragment] The artifact
      # deployment status for the virtual machine.
      attr_accessor :artifact_deployment_status

      # @return [GalleryImageReferenceFragment] The Microsoft Azure Marketplace
      # image reference of the virtual machine.
      attr_accessor :gallery_image_reference

      # @return [ComputeVmPropertiesFragment] The compute virtual machine
      # properties.
      attr_accessor :compute_vm

      # @return [NetworkInterfacePropertiesFragment] The network interface
      # properties.
      attr_accessor :network_interface

      # @return [ApplicableScheduleFragment] The applicable schedule for the
      # virtual machine.
      attr_accessor :applicable_schedule

      # @return [DateTime] The expiration date for VM.
      attr_accessor :expiration_date

      # @return [Boolean] Indicates whether another user can take ownership of
      # the virtual machine
      attr_accessor :allow_claim

      # @return [String] Storage type to use for virtual machine (i.e.
      # Standard, Premium).
      attr_accessor :storage_type

      # @return [VirtualMachineCreationSource] Tells source of creation of lab
      # virtual machine. Output property only. Possible values include:
      # 'FromCustomImage', 'FromGalleryImage'
      attr_accessor :virtual_machine_creation_source

      # @return [String] The resource ID of the environment that contains this
      # virtual machine, if any.
      attr_accessor :environment_id

      # @return [String] The provisioning status of the resource.
      attr_accessor :provisioning_state

      # @return [String] The unique immutable identifier of a resource (Guid).
      attr_accessor :unique_identifier


      #
      # Mapper for LabVirtualMachineFragment class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'LabVirtualMachineFragment',
          type: {
            name: 'Composite',
            class_name: 'LabVirtualMachineFragment',
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
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
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
              notes: {
                required: false,
                serialized_name: 'properties.notes',
                type: {
                  name: 'String'
                }
              },
              owner_object_id: {
                required: false,
                serialized_name: 'properties.ownerObjectId',
                type: {
                  name: 'String'
                }
              },
              owner_user_principal_name: {
                required: false,
                serialized_name: 'properties.ownerUserPrincipalName',
                type: {
                  name: 'String'
                }
              },
              created_by_user_id: {
                required: false,
                serialized_name: 'properties.createdByUserId',
                type: {
                  name: 'String'
                }
              },
              created_by_user: {
                required: false,
                serialized_name: 'properties.createdByUser',
                type: {
                  name: 'String'
                }
              },
              created_date: {
                required: false,
                serialized_name: 'properties.createdDate',
                type: {
                  name: 'DateTime'
                }
              },
              custom_image_id: {
                required: false,
                serialized_name: 'properties.customImageId',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'properties.osType',
                type: {
                  name: 'String'
                }
              },
              size: {
                required: false,
                serialized_name: 'properties.size',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              password: {
                required: false,
                serialized_name: 'properties.password',
                type: {
                  name: 'String'
                }
              },
              ssh_key: {
                required: false,
                serialized_name: 'properties.sshKey',
                type: {
                  name: 'String'
                }
              },
              is_authentication_with_ssh_key: {
                required: false,
                serialized_name: 'properties.isAuthenticationWithSshKey',
                type: {
                  name: 'Boolean'
                }
              },
              fqdn: {
                required: false,
                serialized_name: 'properties.fqdn',
                type: {
                  name: 'String'
                }
              },
              lab_subnet_name: {
                required: false,
                serialized_name: 'properties.labSubnetName',
                type: {
                  name: 'String'
                }
              },
              lab_virtual_network_id: {
                required: false,
                serialized_name: 'properties.labVirtualNetworkId',
                type: {
                  name: 'String'
                }
              },
              disallow_public_ip_address: {
                required: false,
                serialized_name: 'properties.disallowPublicIpAddress',
                type: {
                  name: 'Boolean'
                }
              },
              artifacts: {
                required: false,
                serialized_name: 'properties.artifacts',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ArtifactInstallPropertiesFragmentElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ArtifactInstallPropertiesFragment'
                      }
                  }
                }
              },
              artifact_deployment_status: {
                required: false,
                serialized_name: 'properties.artifactDeploymentStatus',
                type: {
                  name: 'Composite',
                  class_name: 'ArtifactDeploymentStatusPropertiesFragment'
                }
              },
              gallery_image_reference: {
                required: false,
                serialized_name: 'properties.galleryImageReference',
                type: {
                  name: 'Composite',
                  class_name: 'GalleryImageReferenceFragment'
                }
              },
              compute_vm: {
                required: false,
                serialized_name: 'properties.computeVm',
                type: {
                  name: 'Composite',
                  class_name: 'ComputeVmPropertiesFragment'
                }
              },
              network_interface: {
                required: false,
                serialized_name: 'properties.networkInterface',
                type: {
                  name: 'Composite',
                  class_name: 'NetworkInterfacePropertiesFragment'
                }
              },
              applicable_schedule: {
                required: false,
                serialized_name: 'properties.applicableSchedule',
                type: {
                  name: 'Composite',
                  class_name: 'ApplicableScheduleFragment'
                }
              },
              expiration_date: {
                required: false,
                serialized_name: 'properties.expirationDate',
                type: {
                  name: 'DateTime'
                }
              },
              allow_claim: {
                required: false,
                serialized_name: 'properties.allowClaim',
                type: {
                  name: 'Boolean'
                }
              },
              storage_type: {
                required: false,
                serialized_name: 'properties.storageType',
                type: {
                  name: 'String'
                }
              },
              virtual_machine_creation_source: {
                required: false,
                serialized_name: 'properties.virtualMachineCreationSource',
                type: {
                  name: 'String'
                }
              },
              environment_id: {
                required: false,
                serialized_name: 'properties.environmentId',
                type: {
                  name: 'String'
                }
              },
              provisioning_state: {
                required: false,
                serialized_name: 'properties.provisioningState',
                type: {
                  name: 'String'
                }
              },
              unique_identifier: {
                required: false,
                serialized_name: 'properties.uniqueIdentifier',
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
