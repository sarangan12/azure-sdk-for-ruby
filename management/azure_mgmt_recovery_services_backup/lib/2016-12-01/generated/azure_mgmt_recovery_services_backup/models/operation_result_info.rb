# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  module Models
    #
    # Operation result info.
    #
    class OperationResultInfo < OperationResultInfoBase

      include MsRestAzure


      def initialize
        @objectType = "OperationResultInfo"
      end

      attr_accessor :objectType

      # @return [Array<String>] List of jobs created by this operation.
      attr_accessor :job_list


      #
      # Mapper for OperationResultInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'OperationResultInfo',
          type: {
            name: 'Composite',
            class_name: 'OperationResultInfo',
            model_properties: {
              objectType: {
                required: true,
                serialized_name: 'objectType',
                type: {
                  name: 'String'
                }
              },
              job_list: {
                required: false,
                serialized_name: 'jobList',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              }
            }
          }
        }
      end
    end
  end
end
