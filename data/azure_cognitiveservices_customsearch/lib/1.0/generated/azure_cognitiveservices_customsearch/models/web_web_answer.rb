# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::CustomSearch::V1_0
  module Models
    #
    # Defines a list of relevant webpage links.
    #
    class WebWebAnswer < SearchResultsAnswer

      include MsRestAzure


      def initialize
        @_type = "Web/WebAnswer"
      end

      attr_accessor :_type

      # @return [Array<WebPage>] A list of webpages that are relevant to the
      # query.
      attr_accessor :value

      # @return [Boolean] A Boolean value that indicates whether the response
      # excluded some results from the answer. If Bing excluded some results,
      # the value is true.
      attr_accessor :some_results_removed


      #
      # Mapper for WebWebAnswer class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Web/WebAnswer',
          type: {
            name: 'Composite',
            class_name: 'WebWebAnswer',
            model_properties: {
              _type: {
                client_side_validation: true,
                required: true,
                serialized_name: '_type',
                type: {
                  name: 'String'
                }
              },
              id: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              web_search_url: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'webSearchUrl',
                type: {
                  name: 'String'
                }
              },
              follow_up_queries: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'followUpQueries',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'QueryElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'Query'
                      }
                  }
                }
              },
              query_context: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queryContext',
                type: {
                  name: 'Composite',
                  class_name: 'QueryContext'
                }
              },
              total_estimated_matches: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'totalEstimatedMatches',
                type: {
                  name: 'Number'
                }
              },
              is_family_friendly: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'isFamilyFriendly',
                type: {
                  name: 'Boolean'
                }
              },
              value: {
                client_side_validation: true,
                required: true,
                serialized_name: 'value',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'WebPageElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'WebPage'
                      }
                  }
                }
              },
              some_results_removed: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'someResultsRemoved',
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
