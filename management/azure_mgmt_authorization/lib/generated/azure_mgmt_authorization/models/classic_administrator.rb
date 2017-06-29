# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Authorization
  module Models
    #
    # Classic Administrators
    #
    class ClassicAdministrator

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ID of the administrator.
      attr_accessor :id

      # @return [String] The name of the administrator.
      attr_accessor :name

      # @return [String] The type of the administrator.
      attr_accessor :type

      # @return [ClassicAdministratorProperties] Properties for the classic
      # administrator.
      attr_accessor :properties


      #
      # Mapper for ClassicAdministrator class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClassicAdministrator',
          type: {
            name: 'Composite',
            class_name: 'ClassicAdministrator',
            model_properties: {
              id: {
                required: false,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              properties: {
                required: false,
                serialized_name: 'properties',
                type: {
                  name: 'Composite',
                  class_name: 'ClassicAdministratorProperties'
                }
              }
            }
          }
        }
      end
    end
  end
end
