# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::MachineLearning::Mgmt::V2017_01_01
  module Models
    #
    # Sample input data for the service's input(s).
    #
    class ExampleRequest

      include MsRestAzure

      # @return Sample input data for the web service's input(s) given as an
      # input name to sample input values matrix map.
      attr_accessor :inputs

      # @return Sample input data for the web service's global parameters
      attr_accessor :global_parameters


      #
      # Mapper for ExampleRequest class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ExampleRequest',
          type: {
            name: 'Composite',
            class_name: 'ExampleRequest',
            model_properties: {
              inputs: {
                required: false,
                serialized_name: 'inputs',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ArrayElementType',
                      type: {
                        name: 'Sequence',
                        element: {
                            required: false,
                            serialized_name: 'ArrayElementType',
                            type: {
                              name: 'Sequence',
                              element: {
                                  required: false,
                                  serialized_name: 'ObjectElementType',
                                  type: {
                                    name: 'Object'
                                  }
                              }
                            }
                        }
                      }
                  }
                }
              },
              global_parameters: {
                required: false,
                serialized_name: 'globalParameters',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'ObjectElementType',
                      type: {
                        name: 'Object'
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
