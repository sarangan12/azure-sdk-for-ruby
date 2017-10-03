# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup::Api_2016_12_01
  module Models
    #
    # Client script details for file / folder restore.
    #
    class ClientScriptForConnect

      include MsRestAzure

      include MsRest::JSONable
      # @return [String] File content of the client script for file / folder
      # restore.
      attr_accessor :script_content

      # @return [String] File extension of the client script for file / folder
      # restore - .ps1 , .sh , etc.
      attr_accessor :script_extension

      # @return [String] OS type - Windows, Linux etc. for which this file /
      # folder restore client script works.
      attr_accessor :os_type

      # @return [String] URL of Executable from where to source the content. If
      # this is not null then ScriptContent should not be used
      attr_accessor :url

      # @return [String] Mandator suffix that should be added to the name of
      # script that is given for download to user.
      # If its null or empty then , ignore it.
      attr_accessor :script_name_suffix


      #
      # Mapper for ClientScriptForConnect class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ClientScriptForConnect',
          type: {
            name: 'Composite',
            class_name: 'ClientScriptForConnect',
            model_properties: {
              script_content: {
                required: false,
                serialized_name: 'scriptContent',
                type: {
                  name: 'String'
                }
              },
              script_extension: {
                required: false,
                serialized_name: 'scriptExtension',
                type: {
                  name: 'String'
                }
              },
              os_type: {
                required: false,
                serialized_name: 'osType',
                type: {
                  name: 'String'
                }
              },
              url: {
                required: false,
                serialized_name: 'url',
                type: {
                  name: 'String'
                }
              },
              script_name_suffix: {
                required: false,
                serialized_name: 'scriptNameSuffix',
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
