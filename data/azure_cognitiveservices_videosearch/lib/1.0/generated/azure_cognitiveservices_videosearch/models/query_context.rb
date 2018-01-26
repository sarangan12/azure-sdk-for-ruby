# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::VideoSearch::V1_0
  module Models
    #
    # Defines the query context that Bing used for the request.
    #
    class QueryContext

      include MsRestAzure

      # @return [String] The query string as specified in the request.
      attr_accessor :original_query

      # @return [String] The query string used by Bing to perform the query.
      # Bing uses the altered query string if the original query string
      # contained spelling mistakes. For example, if the query string is
      # "saling downwind", the altered query string will be "sailing downwind".
      # This field is included only if the original query string contains a
      # spelling mistake.
      attr_accessor :altered_query

      # @return [String] The query string to use to force Bing to use the
      # original string. For example, if the query string is "saling downwind",
      # the override query string will be "+saling downwind". Remember to
      # encode the query string which results in "%2Bsaling+downwind". This
      # field is included only if the original query string contains a spelling
      # mistake.
      attr_accessor :alteration_override_query

      # @return [Boolean] A Boolean value that indicates whether the specified
      # query has adult intent. The value is true if the query has adult
      # intent; otherwise, false.
      attr_accessor :adult_intent

      # @return [Boolean] A Boolean value that indicates whether Bing requires
      # the user's location to provide accurate results. If you specified the
      # user's location by using the X-MSEdge-ClientIP and X-Search-Location
      # headers, you can ignore this field. For location aware queries, such as
      # "today's weather" or "restaurants near me" that need the user's
      # location to provide accurate results, this field is set to true. For
      # location aware queries that include the location (for example, "Seattle
      # weather"), this field is set to false. This field is also set to false
      # for queries that are not location aware, such as "best sellers".
      attr_accessor :ask_user_for_location

      # @return [Boolean]
      attr_accessor :is_transactional


      #
      # Mapper for QueryContext class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'QueryContext',
          type: {
            name: 'Composite',
            class_name: 'QueryContext',
            model_properties: {
              original_query: {
                client_side_validation: true,
                required: true,
                serialized_name: 'originalQuery',
                type: {
                  name: 'String'
                }
              },
              altered_query: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alteredQuery',
                type: {
                  name: 'String'
                }
              },
              alteration_override_query: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'alterationOverrideQuery',
                type: {
                  name: 'String'
                }
              },
              adult_intent: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'adultIntent',
                type: {
                  name: 'Boolean'
                }
              },
              ask_user_for_location: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'askUserForLocation',
                type: {
                  name: 'Boolean'
                }
              },
              is_transactional: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isTransactional',
                type: {
                  name: 'Boolean'
                }
              }
            }
          }
        }
      end
    end
  end
end
