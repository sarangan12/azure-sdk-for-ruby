# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServices
  module Models
    #
    # Summary of the replication job data for this vault.
    #
    class JobsSummary

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] Count of failed jobs.
      attr_accessor :failed_jobs

      # @return [Integer] Count of suspended jobs.
      attr_accessor :suspended_jobs

      # @return [Integer] Count of in-progress jobs.
      attr_accessor :in_progress_jobs


      #
      # Mapper for JobsSummary class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'JobsSummary',
          type: {
            name: 'Composite',
            class_name: 'JobsSummary',
            model_properties: {
              failed_jobs: {
                required: false,
                serialized_name: 'failedJobs',
                type: {
                  name: 'Number'
                }
              },
              suspended_jobs: {
                required: false,
                serialized_name: 'suspendedJobs',
                type: {
                  name: 'Number'
                }
              },
              in_progress_jobs: {
                required: false,
                serialized_name: 'inProgressJobs',
                type: {
                  name: 'Number'
                }
              }
            }
          }
        }
      end
    end
  end
end
