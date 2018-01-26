# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::VideoSearch::V1_0
  module Models
    #
    # Defines a video answer.
    #
    class Videos < SearchResultsAnswer

      include MsRestAzure


      def initialize
        @_type = "Videos"
      end

      attr_accessor :_type

      # @return [Array<VideoObject>] A list of video objects that are relevant
      # to the query.
      attr_accessor :value

      # @return [Integer]
      attr_accessor :next_offset

      # @return [VideoQueryScenario] Possible values include: 'List',
      # 'SingleDominantVideo'
      attr_accessor :scenario

      # @return [Array<Query>]
      attr_accessor :query_expansions

      # @return [Array<PivotSuggestions>]
      attr_accessor :pivot_suggestions


      #
      # Mapper for Videos class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'Videos',
          type: {
            name: 'Composite',
            class_name: 'Videos',
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
                      serialized_name: 'VideoObjectElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'VideoObject'
                      }
                  }
                }
              },
              next_offset: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'nextOffset',
                type: {
                  name: 'Number'
                }
              },
              scenario: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'scenario',
                type: {
                  name: 'Enum',
                  module: 'VideoQueryScenario'
                }
              },
              query_expansions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'queryExpansions',
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
              pivot_suggestions: {
                client_side_validation: true,
                required: false,
                read_only: true,
                serialized_name: 'pivotSuggestions',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'PivotSuggestionsElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'PivotSuggestions'
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
