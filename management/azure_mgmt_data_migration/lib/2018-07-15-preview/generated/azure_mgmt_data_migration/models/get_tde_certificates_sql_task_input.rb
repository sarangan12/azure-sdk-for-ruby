# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_07_15_preview
  module Models
    #
    # Input for the task that gets TDE certificates in Base64 encoded format.
    #
    class GetTdeCertificatesSqlTaskInput

      include MsRestAzure

      # @return [SqlConnectionInfo] Connection information for SQL Server
      attr_accessor :connection_info

      # @return [FileShare] Backup file share information for file share to be
      # used for temporarily storing files.
      attr_accessor :backup_file_share

      # @return [Array<SelectedCertificateInput>] List containing certificate
      # names and corresponding password to use for encrypting the exported
      # certificate.
      attr_accessor :selected_certificates


      #
      # Mapper for GetTdeCertificatesSqlTaskInput class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          client_side_validation: true,
          required: false,
          serialized_name: 'GetTdeCertificatesSqlTaskInput',
          type: {
            name: 'Composite',
            class_name: 'GetTdeCertificatesSqlTaskInput',
            model_properties: {
              connection_info: {
                client_side_validation: true,
                required: true,
                serialized_name: 'connectionInfo',
                type: {
                  name: 'Composite',
                  class_name: 'SqlConnectionInfo'
                }
              },
              backup_file_share: {
                client_side_validation: true,
                required: true,
                serialized_name: 'backupFileShare',
                type: {
                  name: 'Composite',
                  class_name: 'FileShare'
                }
              },
              selected_certificates: {
                client_side_validation: true,
                required: true,
                serialized_name: 'selectedCertificates',
                type: {
                  name: 'Sequence',
                  element: {
                      client_side_validation: true,
                      required: false,
                      serialized_name: 'SelectedCertificateInputElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'SelectedCertificateInput'
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
