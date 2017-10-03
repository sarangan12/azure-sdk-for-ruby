# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::SQL::Api_2015_05_01_preview
  module Models
    #
    # Partner server information for the failover group.
    #
    class PartnerInfo

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Resource identifier of the partner server.
      attr_accessor :id

      # @return [String] Geo location of the partner server.
      attr_accessor :location

      # @return [FailoverGroupReplicationRole] Replication role of the partner
      # server. Possible values include: 'Primary', 'Secondary'
      attr_accessor :replication_role


      #
      # Mapper for PartnerInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PartnerInfo',
          type: {
            name: 'Composite',
            class_name: 'PartnerInfo',
            model_properties: {
              id: {
                required: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              location: {
                required: false,
                read_only: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              replication_role: {
                required: false,
                read_only: true,
                serialized_name: 'replicationRole',
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
