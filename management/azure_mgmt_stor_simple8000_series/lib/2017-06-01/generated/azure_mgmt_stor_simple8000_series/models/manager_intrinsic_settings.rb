# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::StorSimple8000Series::Mgmt::V2017_06_01
  module Models
    #
    # Intrinsic settings which refers to the type of the Storsimple Manager.
    #
    class ManagerIntrinsicSettings

      include MsRestAzure

      # @return [ManagerType] The type of StorSimple Manager. Possible values
      # include: 'GardaV1', 'HelsinkiV1'
      attr_accessor :type


      #
      # Mapper for ManagerIntrinsicSettings class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'ManagerIntrinsicSettings',
          type: {
            name: 'Composite',
            class_name: 'ManagerIntrinsicSettings',
            model_properties: {
              type: {
                client_side_validation: true,
                required: true,
                serialized_name: 'type',
                type: {
                  name: 'Enum',
                  module: 'ManagerType'
                }
              }
            }
          }
        }
      end
    end
  end
end
