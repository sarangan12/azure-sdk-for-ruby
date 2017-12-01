# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MobileEngagement::Mgmt::V2014_12_01
  module Models
    #
    # Model object.
    #
    #
    class Filter

      include MsRestAzure

      @@discriminatorMap = Hash.new
      @@discriminatorMap["engage-subset"] = "EngageSubsetFilter"
      @@discriminatorMap["engage-old-users"] = "EngageOldUsersFilter"
      @@discriminatorMap["engage-new-users"] = "EngageNewUsersFilter"
      @@discriminatorMap["engage-active-users"] = "EngageActiveUsersFilter"
      @@discriminatorMap["engage-idle-users"] = "EngageIdleUsersFilter"
      @@discriminatorMap["native-push-enabled"] = "NativePushEnabledFilter"
      @@discriminatorMap["push-quota"] = "PushQuotaFilter"
      @@discriminatorMap["app-info"] = "AppInfoFilter"

      def initialize
        @type = "Filter"
      end

      attr_accessor :type


      #
      # Mapper for Filter class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Filter',
          type: {
            name: 'Composite',
            polymorphic_discriminator: 'type',
            uber_parent: 'Filter',
            class_name: 'Filter',
            model_properties: {
            }
          }
        }
      end
    end
  end
end
