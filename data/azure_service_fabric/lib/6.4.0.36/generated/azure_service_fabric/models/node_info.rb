# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ServiceFabric::V6_4_0_36
  module Models
    #
    # Information about a node in Service Fabric cluster.
    #
    class NodeInfo

      include MsRestAzure

      # @return [String] The name of a Service Fabric node.
      attr_accessor :name

      # @return [String] The IP address or fully qualified domain name of the
      # node.
      attr_accessor :ip_address_or_fqdn

      # @return [String] The type of the node.
      attr_accessor :type

      # @return [String] The version of Service Fabric binaries that the node
      # is running.
      attr_accessor :code_version

      # @return [String] The version of Service Fabric cluster manifest that
      # the node is using.
      attr_accessor :config_version

      # @return [NodeStatus] The status of the node. Possible values include:
      # 'Invalid', 'Up', 'Down', 'Enabling', 'Disabling', 'Disabled',
      # 'Unknown', 'Removed'
      attr_accessor :node_status

      # @return [String] Time in seconds since the node has been in NodeStatus
      # Up. Value zero indicates that the node is not Up.
      attr_accessor :node_up_time_in_seconds

      # @return [HealthState] The health state of a Service Fabric entity such
      # as Cluster, Node, Application, Service, Partition, Replica etc.
      # Possible values include: 'Invalid', 'Ok', 'Warning', 'Error', 'Unknown'
      attr_accessor :health_state

      # @return [Boolean] Indicates if the node is a seed node or not. Returns
      # true if the node is a seed node, otherwise false. A quorum of seed
      # nodes are required for proper operation of Service Fabric cluster.
      attr_accessor :is_seed_node

      # @return [String] The upgrade domain of the node.
      attr_accessor :upgrade_domain

      # @return [String] The fault domain of the node.
      attr_accessor :fault_domain

      # @return [NodeId] An internal ID used by Service Fabric to uniquely
      # identify a node. Node Id is deterministically generated from node name.
      attr_accessor :id

      # @return [String] The ID representing the node instance. While the ID of
      # the node is deterministically generated from the node name and remains
      # same across restarts, the InstanceId changes every time node restarts.
      attr_accessor :instance_id

      # @return [NodeDeactivationInfo] Information about the node deactivation.
      # This information is valid for a node that is undergoing deactivation or
      # has already been deactivated.
      attr_accessor :node_deactivation_info

      # @return [Boolean] Indicates if the node is stopped by calling stop node
      # API or not. Returns true if the node is stopped, otherwise false.
      attr_accessor :is_stopped

      # @return [String] Time in seconds since the node has been in NodeStatus
      # Down. Value zero indicates node is not NodeStatus Down.
      attr_accessor :node_down_time_in_seconds

      # @return [DateTime] Date time in UTC when the node came up. If the node
      # has never been up then this value will be zero date time.
      attr_accessor :node_up_at

      # @return [DateTime] Date time in UTC when the node went down. If node
      # has never been down then this value will be zero date time.
      attr_accessor :node_down_at


      #
      # Mapper for NodeInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'NodeInfo',
          type: {
            name: 'Composite',
            class_name: 'NodeInfo',
            model_properties: {
              name: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Name',
                type: {
                  name: 'String'
                }
              },
              ip_address_or_fqdn: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IpAddressOrFQDN',
                type: {
                  name: 'String'
                }
              },
              type: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Type',
                type: {
                  name: 'String'
                }
              },
              code_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'CodeVersion',
                type: {
                  name: 'String'
                }
              },
              config_version: {
                client_side_validation: true,
                required: false,
                serialized_name: 'ConfigVersion',
                type: {
                  name: 'String'
                }
              },
              node_status: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeStatus',
                type: {
                  name: 'String'
                }
              },
              node_up_time_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeUpTimeInSeconds',
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
              is_seed_node: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsSeedNode',
                type: {
                  name: 'Boolean'
                }
              },
              upgrade_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'UpgradeDomain',
                type: {
                  name: 'String'
                }
              },
              fault_domain: {
                client_side_validation: true,
                required: false,
                serialized_name: 'FaultDomain',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'Id',
                type: {
                  name: 'Composite',
                  class_name: 'NodeId'
                }
              },
              instance_id: {
                client_side_validation: true,
                required: false,
                serialized_name: 'InstanceId',
                type: {
                  name: 'String'
                }
              },
              node_deactivation_info: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeDeactivationInfo',
                type: {
                  name: 'Composite',
                  class_name: 'NodeDeactivationInfo'
                }
              },
              is_stopped: {
                client_side_validation: true,
                required: false,
                serialized_name: 'IsStopped',
                type: {
                  name: 'Boolean'
                }
              },
              node_down_time_in_seconds: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeDownTimeInSeconds',
                type: {
                  name: 'String'
                }
              },
              node_up_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeUpAt',
                type: {
                  name: 'DateTime'
                }
              },
              node_down_at: {
                client_side_validation: true,
                required: false,
                serialized_name: 'NodeDownAt',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
