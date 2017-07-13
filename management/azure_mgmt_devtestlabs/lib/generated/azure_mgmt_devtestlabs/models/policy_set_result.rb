# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DevTestLabs
  module Models
    #
    # Result of a policy set evaluation.
    #
    class PolicySetResult

      include MsRestAzure

      include MsRest::JSONable
      # @return [Boolean] A value indicating whether this policy set evaluation
      # has discovered violations.
      attr_accessor :has_error

      # @return [Array<PolicyViolation>] The list of policy violations.
      attr_accessor :policy_violations


      #
      # Mapper for PolicySetResult class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'PolicySetResult',
          type: {
            name: 'Composite',
            class_name: 'PolicySetResult',
            model_properties: {
              has_error: {
                required: false,
                serialized_name: 'hasError',
                type: {
                  name: 'Boolean'
                }
              },
              policy_violations: {
                required: false,
                serialized_name: 'policyViolations',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'PolicyViolationElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PolicyViolation'
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
