# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Represents a recommendation result generated by the recommendation
    # engine.
    #
    class Recommendation

      include MsRestAzure

      include MsRest::JSONable
      # @return [DateTime] Timestamp when this instance was created.
      attr_accessor :creation_time

      # @return [String] A GUID value that each recommendation object is
      # associated with.
      attr_accessor :recommendation_id

      # @return [String] Full ARM resource ID string that this recommendation
      # object is associated with.
      attr_accessor :resource_id

      # @return [ResourceScopeType] Name of a resource type this recommendation
      # applies, e.g. Subscription, ServerFarm, Site. Possible values include:
      # 'ServerFarm', 'Subscription', 'WebSite'
      attr_accessor :resource_scope

      # @return [String] Unique name of the rule.
      attr_accessor :rule_name

      # @return [String] UI friendly name of the rule (may not be unique).
      attr_accessor :display_name

      # @return [String] Recommendation text.
      attr_accessor :message

      # @return [NotificationLevel] Level indicating how critical this
      # recommendation can impact. Possible values include: 'Critical',
      # 'Warning', 'Information', 'NonUrgentSuggestion'
      attr_accessor :level

      # @return [Channels] List of channels that this recommendation can apply.
      # Possible values include: 'Notification', 'Api', 'Email', 'Webhook',
      # 'All'
      attr_accessor :channels

      # @return [Array<String>] The list of category tags that this
      # recommendation belongs to.
      attr_accessor :tags

      # @return [String] Name of action recommended by this object.
      attr_accessor :action_name

      # @return [DateTime] The beginning time in UTC of a range that the
      # recommendation refers to.
      attr_accessor :start_time

      # @return [DateTime] The end time in UTC of a range that the
      # recommendation refers to.
      attr_accessor :end_time

      # @return [DateTime] When to notify this recommendation next in UTC. Null
      # means that this will never be notified anymore.
      attr_accessor :next_notification_time

      # @return [DateTime] Date and time in UTC when this notification expires.
      attr_accessor :notification_expiration_time

      # @return [DateTime] Last timestamp in UTC this instance was actually
      # notified. Null means that this recommendation hasn't been notified yet.
      attr_accessor :notified_time

      # @return [Float] A metric value measured by the rule.
      attr_accessor :score

      # @return [Boolean] True if this is associated with a dynamically added
      # rule
      attr_accessor :is_dynamic

      # @return [String] Extension name of the portal if exists.
      attr_accessor :extension_name

      # @return [String] Deep link to a blade on the portal.
      attr_accessor :blade_name

      # @return [String] Forward link to an external document associated with
      # the rule.
      attr_accessor :forward_link


      #
      # Mapper for Recommendation class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Recommendation',
          type: {
            name: 'Composite',
            class_name: 'Recommendation',
            model_properties: {
              creation_time: {
                required: false,
                serialized_name: 'creationTime',
                type: {
                  name: 'DateTime'
                }
              },
              recommendation_id: {
                required: false,
                serialized_name: 'recommendationId',
                type: {
                  name: 'String'
                }
              },
              resource_id: {
                required: false,
                serialized_name: 'resourceId',
                type: {
                  name: 'String'
                }
              },
              resource_scope: {
                required: false,
                serialized_name: 'resourceScope',
                type: {
                  name: 'String'
                }
              },
              rule_name: {
                required: false,
                serialized_name: 'ruleName',
                type: {
                  name: 'String'
                }
              },
              display_name: {
                required: false,
                serialized_name: 'displayName',
                type: {
                  name: 'String'
                }
              },
              message: {
                required: false,
                serialized_name: 'message',
                type: {
                  name: 'String'
                }
              },
              level: {
                required: false,
                serialized_name: 'level',
                type: {
                  name: 'Enum',
                  module: 'NotificationLevel'
                }
              },
              channels: {
                required: false,
                serialized_name: 'channels',
                type: {
                  name: 'Enum',
                  module: 'Channels'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
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
              },
              action_name: {
                required: false,
                serialized_name: 'actionName',
                type: {
                  name: 'String'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'startTime',
                type: {
                  name: 'DateTime'
                }
              },
              end_time: {
                required: false,
                serialized_name: 'endTime',
                type: {
                  name: 'DateTime'
                }
              },
              next_notification_time: {
                required: false,
                serialized_name: 'nextNotificationTime',
                type: {
                  name: 'DateTime'
                }
              },
              notification_expiration_time: {
                required: false,
                serialized_name: 'notificationExpirationTime',
                type: {
                  name: 'DateTime'
                }
              },
              notified_time: {
                required: false,
                serialized_name: 'notifiedTime',
                type: {
                  name: 'DateTime'
                }
              },
              score: {
                required: false,
                serialized_name: 'score',
                type: {
                  name: 'Double'
                }
              },
              is_dynamic: {
                required: false,
                serialized_name: 'isDynamic',
                type: {
                  name: 'Boolean'
                }
              },
              extension_name: {
                required: false,
                serialized_name: 'extensionName',
                type: {
                  name: 'String'
                }
              },
              blade_name: {
                required: false,
                serialized_name: 'bladeName',
                type: {
                  name: 'String'
                }
              },
              forward_link: {
                required: false,
                serialized_name: 'forwardLink',
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
