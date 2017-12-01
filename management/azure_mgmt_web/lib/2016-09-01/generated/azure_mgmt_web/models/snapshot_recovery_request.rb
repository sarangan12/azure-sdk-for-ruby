# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Web::Mgmt::V2016_09_01
  module Models
    #
    # Details about app recovery operation.
    #
    class SnapshotRecoveryRequest < ProxyOnlyResource

      include MsRestAzure

      # @return [String] Point in time in which the app recovery should be
      # attempted, formatted as a DateTime string.
      attr_accessor :snapshot_time

      # @return [SnapshotRecoveryTarget] Specifies the web app that snapshot
      # contents will be written to.
      attr_accessor :recovery_target

      # @return [Boolean] If <code>true</code> the recovery operation can
      # overwrite source app; otherwise, <code>false</code>.
      attr_accessor :overwrite

      # @return [Boolean] If true, site configuration, in addition to content,
      # will be reverted.
      attr_accessor :recover_configuration

      # @return [Boolean] If true, custom hostname conflicts will be ignored
      # when recovering to a target web app.
      # This setting is only necessary when RecoverConfiguration is enabled.
      attr_accessor :ignore_conflicting_host_names


      #
      # Mapper for SnapshotRecoveryRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'SnapshotRecoveryRequest',
          type: {
            name: 'Composite',
            class_name: 'SnapshotRecoveryRequest',
            model_properties: {
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                client_side_validation: true,
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              snapshot_time: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.snapshotTime',
                type: {
                  name: 'String'
                }
              },
              recovery_target: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recoveryTarget',
                type: {
                  name: 'Composite',
                  class_name: 'SnapshotRecoveryTarget'
                }
              },
              overwrite: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.overwrite',
                type: {
                  name: 'Boolean'
                }
              },
              recover_configuration: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.recoverConfiguration',
                type: {
                  name: 'Boolean'
                }
              },
              ignore_conflicting_host_names: {
                client_side_validation: true,
                required: false,
                serialized_name: 'properties.ignoreConflictingHostNames',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
