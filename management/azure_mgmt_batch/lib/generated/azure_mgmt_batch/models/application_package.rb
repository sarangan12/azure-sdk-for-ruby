# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Batch
  module Models
    #
    # An application package which represents a particular version of an
    # application.
    #
    class ApplicationPackage

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The ID of the application.
      attr_accessor :id

      # @return [String] The version of the application package.
      attr_accessor :version

      # @return [PackageState] The current state of the application package.
      # Possible values include: 'pending', 'active', 'unmapped'
      attr_accessor :state

      # @return [String] The format of the application package, if the package
      # is active.
      attr_accessor :format

      # @return [String] The storage URL at which the application package is
      # stored.
      attr_accessor :storage_url

      # @return [DateTime] The UTC time at which the storage URL will expire.
      attr_accessor :storage_url_expiry

      # @return [DateTime] The time at which the package was last activated, if
      # the package is active.
      attr_accessor :last_activation_time


      #
      # Mapper for ApplicationPackage class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ApplicationPackage',
          type: {
            name: 'Composite',
            class_name: 'ApplicationPackage',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              version: {
                required: false,
                read_only: true,
                serialized_name: 'version',
                type: {
                  name: 'String'
                }
              },
              state: {
                required: false,
                read_only: true,
                serialized_name: 'state',
                type: {
                  name: 'Enum',
                  module: 'PackageState'
                }
              },
              format: {
                required: false,
                read_only: true,
                serialized_name: 'format',
                type: {
                  name: 'String'
                }
              },
              storage_url: {
                required: false,
                read_only: true,
                serialized_name: 'storageUrl',
                type: {
                  name: 'String'
                }
              },
              storage_url_expiry: {
                required: false,
                read_only: true,
                serialized_name: 'storageUrlExpiry',
                type: {
                  name: 'DateTime'
                }
              },
              last_activation_time: {
                required: false,
                read_only: true,
                serialized_name: 'lastActivationTime',
                type: {
                  name: 'DateTime'
                }
              }
            }
          }
        }
      end
    end
  end
end
