# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web
  module Models
    #
    # Metric limits set on an app.
    #
    class SiteLimits

      include MsRestAzure

      include MsRest::JSONable
      # @return [Float] Maximum allowed CPU usage percentage.
      attr_accessor :max_percentage_cpu

      # @return [Integer] Maximum allowed memory usage in MB.
      attr_accessor :max_memory_in_mb

      # @return [Integer] Maximum allowed disk size usage in MB.
      attr_accessor :max_disk_size_in_mb


      #
      # Mapper for SiteLimits class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'SiteLimits',
          type: {
            name: 'Composite',
            class_name: 'SiteLimits',
            model_properties: {
              max_percentage_cpu: {
                required: false,
                serialized_name: 'maxPercentageCpu',
                type: {
                  name: 'Double'
                }
              },
              max_memory_in_mb: {
                required: false,
                serialized_name: 'maxMemoryInMb',
                type: {
                  name: 'Number'
                }
              },
              max_disk_size_in_mb: {
                required: false,
                serialized_name: 'maxDiskSizeInMb',
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
