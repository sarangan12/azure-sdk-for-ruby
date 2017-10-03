# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::CustomerInsights::Api_2017_04_26
  module Models
    #
    # The KPI participant profile metadata.
    #
    class KpiParticipantProfilesMetadata

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Name of the type.
      attr_accessor :type_name


      #
      # Mapper for KpiParticipantProfilesMetadata class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'KpiParticipantProfilesMetadata',
          type: {
            name: 'Composite',
            class_name: 'KpiParticipantProfilesMetadata',
            model_properties: {
              type_name: {
                required: true,
                serialized_name: 'typeName',
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
