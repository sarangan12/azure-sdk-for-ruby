# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Represents a stateful service replica. This includes information about
    # the identity, role, status, health, node name, uptime, and other details
    # about the replica.
    #
    class StatefulServiceReplicaInfo < ReplicaInfo

      include MsRestAzure


      def initialize
        @ServiceKind = "Stateful"
      end

      attr_accessor :ServiceKind

      # @return [ReplicaRole] The role of a replica of a stateful service.
      # Possible values include: 'Unknown', 'None', 'Primary', 'IdleSecondary',
      # 'ActiveSecondary'
      attr_accessor :replica_role

      # @return [String] Id of a stateful service replica. ReplicaId is used by
      # Service Fabric to uniquely identify a replica of a partition. It is
      # unique within a partition and does not change for the lifetime of the
      # replica. If a replica gets dropped and another replica gets created on
      # the same node for the same partition, it will get a different value for
      # the id. Sometimes the id of a stateless service instance is also
      # referred as a replica id.
      attr_accessor :replica_id


      #
      # Mapper for StatefulServiceReplicaInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Stateful',
          type: {
            name: 'Composite',
            class_name: 'StatefulServiceReplicaInfo',
            model_properties: {
              replica_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaStatus',
                type: {
                  name: 'String'
                }
              },
              health_state: {
                client_side_validation: true,
                required: false,
                serialized_name: 'HealthState',
                type: {
                  name: 'String'
                }
              },
              node_name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeName',
                type: {
                  name: 'String'
                }
              },
              address: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Address',
                type: {
                  name: 'String'
                }
              },
              last_in_build_duration_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'LastInBuildDurationInSeconds',
                type: {
                  name: 'String'
                }
              },
              ServiceKind: {
                client_side_validation: true,
                required: true,
                serialized_name: 'ServiceKind',
                type: {
                  name: 'String'
                }
              },
              replica_role: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaRole',
                type: {
                  name: 'String'
                }
              },
              replica_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ReplicaId',
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
