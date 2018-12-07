# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_2_0_9
  module Models
    #
    # Backup configuration information for a specific Service Fabric
    # application specifying what backup policy is being applied and suspend
    # description, if any.
    #
    class ApplicationBackupConfigurationInfo < BackupConfigurationInfo

      include MsRestAzure


      def initialize
        @Kind = "Application"
      end

      attr_accessor :Kind

      # @return [String] The name of the application, including the 'fabric:'
      # URI scheme.
      attr_accessor :application_name


      #
      # Mapper for ApplicationBackupConfigurationInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Application',
          type: {
            name: 'Composite',
            class_name: 'ApplicationBackupConfigurationInfo',
            model_properties: {
              policy_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyName',
                type: {
                  name: 'String'
                }
              },
              policy_inherited_from: {
                client_side_validation: true,
                required: false,
                serialized_name: 'PolicyInheritedFrom',
                type: {
                  name: 'String'
                }
              },
              suspension_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'SuspensionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'BackupSuspensionInfo'
                }
              },
              Kind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'Kind',
                type: {
                  name: 'String'
                }
              },
              application_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ApplicationName',
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
