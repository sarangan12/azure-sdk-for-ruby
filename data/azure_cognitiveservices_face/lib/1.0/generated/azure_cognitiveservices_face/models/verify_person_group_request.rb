# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::Face::V1_0
  module Models
    #
    # Request body for verify operation.
    #
    class VerifyPersonGroupRequest

      include MsRestAzure

      # @return faceId the face, comes from Face - Detect
      attr_accessor :face_id

      # @return Specify a certain person in a person group. personId is created
      # in Persons.Create.
      attr_accessor :person_id

      # @return [String] Using existing personGroupId and personId for fast
      # loading a specified person. personGroupId is created in Person
      # Groups.Create.
      attr_accessor :person_group_id


      #
      # Mapper for VerifyPersonGroupRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'VerifyPersonGroupRequest',
          type: {
            name: 'Composite',
            class_name: 'VerifyPersonGroupRequest',
            model_properties: {
              face_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'faceId',
                type: {
                  name: 'String'
                }
              },
              person_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'personId',
                type: {
                  name: 'String'
                }
              },
              person_group_id: {
                client_side_validation: true,
                required: true,
                serialized_name: 'personGroupId',
                constraints: {
                  MaxLength: 64,
                  Pattern: '^[a-z0-9-_]+$'
                },
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
