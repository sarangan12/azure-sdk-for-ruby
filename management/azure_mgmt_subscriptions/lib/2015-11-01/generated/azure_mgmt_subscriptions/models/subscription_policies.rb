# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Subscriptions::Api_2015_11_01
  module Models
    #
    # Subscription policies.
    #
    class SubscriptionPolicies

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Gets or sets the subscription location placement Id.
      attr_accessor :location_placement_id

      # @return [String] Gets or sets the subscription quota Id.
      attr_accessor :quota_id


      #
      # Mapper for SubscriptionPolicies class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SubscriptionPolicies',
          type: {
            name: 'Composite',
            class_name: 'SubscriptionPolicies',
            model_properties: {
              location_placement_id: {
                required: false,
                serialized_name: 'locationPlacementId',
                type: {
                  name: 'String'
                }
              },
              quota_id: {
                required: false,
                serialized_name: 'quotaId',
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
