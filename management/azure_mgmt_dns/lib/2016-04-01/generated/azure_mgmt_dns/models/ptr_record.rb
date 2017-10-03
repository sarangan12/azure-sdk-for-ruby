# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Dns::Api_2016_04_01
  module Models
    #
    # A PTR record.
    #
    class PtrRecord

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The PTR target domain name for this PTR record.
      attr_accessor :ptrdname


      #
      # Mapper for PtrRecord class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PtrRecord',
          type: {
            name: 'Composite',
            class_name: 'PtrRecord',
            model_properties: {
              ptrdname: {
                required: false,
                serialized_name: 'ptrdname',
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
