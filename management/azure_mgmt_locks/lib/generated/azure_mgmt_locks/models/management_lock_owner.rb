# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Locks
  module Models
    #
    # Lock owner properties.
    #
    class ManagementLockOwner

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The application ID of the lock owner.
      attr_accessor :application_id


      #
      # Mapper for ManagementLockOwner class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ManagementLockOwner',
          type: {
            name: 'Composite',
            class_name: 'ManagementLockOwner',
            model_properties: {
              application_id: {
                required: false,
                serialized_name: 'applicationId',
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
