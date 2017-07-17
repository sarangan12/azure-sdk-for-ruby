# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # A disk access SAS uri.
    #
    class AccessUri

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] A SAS uri for accessing a disk.
      attr_accessor :access_sas


      #
      # Mapper for AccessUri class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'AccessUri',
          type: {
            name: 'Composite',
            class_name: 'AccessUri',
            model_properties: {
              access_sas: {
                required: false,
                read_only: true,
                serialized_name: 'properties.output.accessSAS',
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
