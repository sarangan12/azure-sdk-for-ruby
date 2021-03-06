# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # Contains the os disk image information.
    #
    class OSDiskImage

      include MsRestAzure

      # @return [OperatingSystemTypes] the operating system of the
      # osDiskImage. Possible values include: 'Windows', 'Linux'
      attr_accessor :operating_system


      #
      # Mapper for OSDiskImage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OSDiskImage',
          type: {
            name: 'Composite',
            class_name: 'OSDiskImage',
            model_properties: {
              operating_system: {
                required: true,
                serialized_name: 'operatingSystem',
                type: {
                  name: 'Enum',
                  module: 'OperatingSystemTypes'
                }
              }
            }
          }
        }
      end
    end
  end
end
