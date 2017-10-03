# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Storage::Api_2015_06_15
  module Models
    #
    # The parameters to provide for the account.
    #
    class StorageAccountCreateParameters

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] The location of the resource. This will be one of the
      # supported and registered Azure Geo Regions (e.g. West US, East US,
      # Southeast Asia, etc.). The geo region of a resource cannot be changed
      # once it is created, but if an identical geo region is specified on
      # update, the request will succeed.
      attr_accessor :location

      # @return [Hash{String => String}] A list of key value pairs that
      # describe the resource. These tags can be used for viewing and grouping
      # this resource (across resource groups). A maximum of 15 tags can be
      # provided for a resource. Each tag must have a key with a length no
      # greater than 128 characters and a value with a length no greater than
      # 256 characters.
      attr_accessor :tags

      # @return [AccountType] The sku name. Required for account creation;
      # optional for update. Note that in older versions, sku name was called
      # accountType. Possible values include: 'Standard_LRS', 'Standard_ZRS',
      # 'Standard_GRS', 'Standard_RAGRS', 'Premium_LRS'
      attr_accessor :account_type


      #
      # Mapper for StorageAccountCreateParameters class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'StorageAccountCreateParameters',
          type: {
            name: 'Composite',
            class_name: 'StorageAccountCreateParameters',
            model_properties: {
              location: {
                required: true,
                serialized_name: 'location',
                type: {
                  name: 'String'
                }
              },
              tags: {
                required: false,
                serialized_name: 'tags',
                type: {
                  name: 'Dictionary',
                  value: {
                      required: false,
                      serialized_name: 'StringElementType',
                      type: {
                        name: 'String'
                      }
                  }
                }
              },
              account_type: {
                required: true,
                serialized_name: 'properties.accountType',
                type: {
                  name: 'Enum',
                  module: 'AccountType'
                }
              }
            }
          }
        }
      end
    end
  end
end
