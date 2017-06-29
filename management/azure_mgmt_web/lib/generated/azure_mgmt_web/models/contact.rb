# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Contact information for domain registration. If 'Domain Privacy' option
    # is not selected then the contact information is made publicly available
    # through the Whois
    # directories as per ICANN requirements.
    #
    class Contact

      include MsRestAzure

      include MsRest::JSONable
      # @return [Address] Mailing address.
      attr_accessor :address_mailing

      # @return [String] Email address.
      attr_accessor :email

      # @return [String] Fax number.
      attr_accessor :fax

      # @return [String] Job title.
      attr_accessor :job_title

      # @return [String] First name.
      attr_accessor :name_first

      # @return [String] Last name.
      attr_accessor :name_last

      # @return [String] Middle name.
      attr_accessor :name_middle

      # @return [String] Organization.
      attr_accessor :organization

      # @return [String] Phone number.
      attr_accessor :phone


      #
      # Mapper for Contact class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'Contact',
          type: {
            name: 'Composite',
            class_name: 'Contact',
            model_properties: {
              address_mailing: {
                required: false,
                serialized_name: 'addressMailing',
                type: {
                  name: 'Composite',
                  class_name: 'Address'
                }
              },
              email: {
                required: true,
                serialized_name: 'email',
                type: {
                  name: 'String'
                }
              },
              fax: {
                required: false,
                serialized_name: 'fax',
                type: {
                  name: 'String'
                }
              },
              job_title: {
                required: false,
                serialized_name: 'jobTitle',
                type: {
                  name: 'String'
                }
              },
              name_first: {
                required: true,
                serialized_name: 'nameFirst',
                type: {
                  name: 'String'
                }
              },
              name_last: {
                required: true,
                serialized_name: 'nameLast',
                type: {
                  name: 'String'
                }
              },
              name_middle: {
                required: false,
                serialized_name: 'nameMiddle',
                type: {
                  name: 'String'
                }
              },
              organization: {
                required: false,
                serialized_name: 'organization',
                type: {
                  name: 'String'
                }
              },
              phone: {
                required: true,
                serialized_name: 'phone',
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
