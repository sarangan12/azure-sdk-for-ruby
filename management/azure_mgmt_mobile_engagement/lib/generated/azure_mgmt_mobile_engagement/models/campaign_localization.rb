# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::MobileEngagement
  module Models
    #
    # Model object.
    #
    #
    class CampaignLocalization

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] Title of the notification. This field supports appInfo
      # markers.
      attr_accessor :notification_title

      # @return [String] Message of the notification. This field supports
      # appInfo markers.
      attr_accessor :notification_message

      # @return [Array<Integer>] Optional image encoded in base 64. Usually
      # included in the right part of in app notifications (or as a banner if
      # there is neither text nor content icon). For Android system
      # notifications, the image is used as the large icon (displayed only on
      # Android 3+).
      #
      attr_accessor :notification_image

      # @return [NotificationOptions] Additional platform specific options.
      attr_accessor :notification_options

      # @return [String] Title of the announcement or poll. This field supports
      # appInfo markers.
      attr_accessor :title

      # @return [String] Body of the text/web announcement, poll or data push.
      # This field supports appInfo markers.
      attr_accessor :body

      # @return [String] Text of the action button for text/web announcements
      # and polls (answer button).
      attr_accessor :action_button_text

      # @return [String] Text of the exit button for text/web announcements and
      # polls.
      attr_accessor :exit_button_text

      # @return [String] URL to launch when the announcement is actioned.
      attr_accessor :action_url

      # @return Native push payload.
      attr_accessor :payload


      #
      # Mapper for CampaignLocalization class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'CampaignLocalization',
          type: {
            name: 'Composite',
            class_name: 'CampaignLocalization',
            model_properties: {
              notification_title: {
                required: false,
                serialized_name: 'notificationTitle',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              notification_message: {
                required: false,
                serialized_name: 'notificationMessage',
                constraints: {
                  MaxLength: 4000
                },
                type: {
                  name: 'String'
                }
              },
              notification_image: {
                required: false,
                serialized_name: 'notificationImage',
                constraints: {
                  MaxLength: 65535
                },
                type: {
                  name: 'ByteArray'
                }
              },
              notification_options: {
                required: false,
                serialized_name: 'notificationOptions',
                type: {
                  name: 'Composite',
                  class_name: 'NotificationOptions'
                }
              },
              title: {
                required: false,
                serialized_name: 'title',
                constraints: {
                  MaxLength: 128
                },
                type: {
                  name: 'String'
                }
              },
              body: {
                required: false,
                serialized_name: 'body',
                constraints: {
                  MaxLength: 65535
                },
                type: {
                  name: 'String'
                }
              },
              action_button_text: {
                required: false,
                serialized_name: 'actionButtonText',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              exit_button_text: {
                required: false,
                serialized_name: 'exitButtonText',
                constraints: {
                  MaxLength: 64
                },
                type: {
                  name: 'String'
                }
              },
              action_url: {
                required: false,
                serialized_name: 'actionUrl',
                constraints: {
                  MaxLength: 2000
                },
                type: {
                  name: 'String'
                }
              },
              payload: {
                required: false,
                serialized_name: 'payload',
                type: {
                  name: 'Object'
                }
              }
            }
          }
        }
      end
    end
  end
end
