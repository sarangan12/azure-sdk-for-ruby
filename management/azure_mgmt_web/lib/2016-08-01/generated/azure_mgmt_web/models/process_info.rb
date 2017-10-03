# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Web::Api_2016_08_01
  module Models
    #
    # Process Information.
    #
    class ProcessInfo < MsRestAzure::ProxyOnlyResource

      include MsRestAzure

      include MsRest::JSONable
      # @return [Integer] ARM Identifier for deployment.
      attr_accessor :process_info_id

      # @return [String] Deployment name.
      attr_accessor :process_info_name

      # @return [String] HRef URI.
      attr_accessor :href

      # @return [String] Minidump URI.
      attr_accessor :mini_dump

      # @return [Boolean] Is profile running?
      attr_accessor :is_profile_running

      # @return [Boolean] Is the IIS Profile running?
      attr_accessor :is_iis_profile_running

      # @return [Float] IIS Profile timeout (seconds).
      attr_accessor :iis_profile_timeout_in_seconds

      # @return [String] Parent process.
      attr_accessor :parent

      # @return [Array<String>] Child process list.
      attr_accessor :children

      # @return [Array<ProcessThreadInfo>] Thread list.
      attr_accessor :threads

      # @return [Array<String>] List of open files.
      attr_accessor :open_file_handles

      # @return [Array<ProcessModuleInfo>] List of modules.
      attr_accessor :modules

      # @return [String] File name of this process.
      attr_accessor :file_name

      # @return [String] Command line.
      attr_accessor :command_line

      # @return [String] User name.
      attr_accessor :user_name

      # @return [Integer] Handle count.
      attr_accessor :handle_count

      # @return [Integer] Module count.
      attr_accessor :module_count

      # @return [Integer] Thread count.
      attr_accessor :thread_count

      # @return [DateTime] Start time.
      attr_accessor :start_time

      # @return [String] Total CPU time.
      attr_accessor :total_processor_time

      # @return [String] User CPU time.
      attr_accessor :user_processor_time

      # @return [String] Privileged CPU time.
      attr_accessor :privileged_processor_time

      # @return [Integer] Working set.
      attr_accessor :working_set64

      # @return [Integer] Peak working set.
      attr_accessor :peak_working_set64

      # @return [Integer] Private memory size.
      attr_accessor :private_memory_size64

      # @return [Integer] Virtual memory size.
      attr_accessor :virtual_memory_size64

      # @return [Integer] Peak virtual memory usage.
      attr_accessor :peak_virtual_memory_size64

      # @return [Integer] Paged system memory.
      attr_accessor :paged_system_memory_size64

      # @return [Integer] Non-paged system memory.
      attr_accessor :nonpaged_system_memory_size64

      # @return [Integer] Paged memory.
      attr_accessor :paged_memory_size64

      # @return [Integer] Peak paged memory.
      attr_accessor :peak_paged_memory_size64

      # @return [DateTime] Time stamp.
      attr_accessor :time_stamp

      # @return [Hash{String => String}] List of environment variables.
      attr_accessor :environment_variables

      # @return [Boolean] Is this the SCM site?
      attr_accessor :is_scm_site

      # @return [Boolean] Is this a Web Job?
      attr_accessor :is_web_job

      # @return [String] Description of process.
      attr_accessor :description


      #
      # Mapper for ProcessInfo class as Ruby Hash.
      # This will be used for serialization/deserialization.
      #
      def self.mapper()
        {
          required: false,
          serialized_name: 'ProcessInfo',
          type: {
            name: 'Composite',
            class_name: 'ProcessInfo',
            model_properties: {
              id: {
                required: false,
                read_only: true,
                serialized_name: 'id',
                type: {
                  name: 'String'
                }
              },
              name: {
                required: false,
                read_only: true,
                serialized_name: 'name',
                type: {
                  name: 'String'
                }
              },
              kind: {
                required: false,
                serialized_name: 'kind',
                type: {
                  name: 'String'
                }
              },
              type: {
                required: false,
                read_only: true,
                serialized_name: 'type',
                type: {
                  name: 'String'
                }
              },
              process_info_id: {
                required: false,
                serialized_name: 'properties.id',
                type: {
                  name: 'Number'
                }
              },
              process_info_name: {
                required: false,
                serialized_name: 'properties.name',
                type: {
                  name: 'String'
                }
              },
              href: {
                required: false,
                serialized_name: 'properties.href',
                type: {
                  name: 'String'
                }
              },
              mini_dump: {
                required: false,
                serialized_name: 'properties.miniDump',
                type: {
                  name: 'String'
                }
              },
              is_profile_running: {
                required: false,
                serialized_name: 'properties.isProfileRunning',
                type: {
                  name: 'Boolean'
                }
              },
              is_iis_profile_running: {
                required: false,
                serialized_name: 'properties.isIisProfileRunning',
                type: {
                  name: 'Boolean'
                }
              },
              iis_profile_timeout_in_seconds: {
                required: false,
                serialized_name: 'properties.iisProfileTimeoutInSeconds',
                type: {
                  name: 'Double'
                }
              },
              parent: {
                required: false,
                serialized_name: 'properties.parent',
                type: {
                  name: 'String'
                }
              },
              children: {
                required: false,
                serialized_name: 'properties.children',
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
              threads: {
                required: false,
                serialized_name: 'properties.threads',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProcessThreadInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProcessThreadInfo'
                      }
                  }
                }
              },
              open_file_handles: {
                required: false,
                serialized_name: 'properties.openFileHandles',
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
              modules: {
                required: false,
                serialized_name: 'properties.modules',
                type: {
                  name: 'Sequence',
                  element: {
                      required: false,
                      serialized_name: 'ProcessModuleInfoElementType',
                      type: {
                        name: 'Composite',
                        class_name: 'ProcessModuleInfo'
                      }
                  }
                }
              },
              file_name: {
                required: false,
                serialized_name: 'properties.fileName',
                type: {
                  name: 'String'
                }
              },
              command_line: {
                required: false,
                serialized_name: 'properties.commandLine',
                type: {
                  name: 'String'
                }
              },
              user_name: {
                required: false,
                serialized_name: 'properties.userName',
                type: {
                  name: 'String'
                }
              },
              handle_count: {
                required: false,
                serialized_name: 'properties.handleCount',
                type: {
                  name: 'Number'
                }
              },
              module_count: {
                required: false,
                serialized_name: 'properties.moduleCount',
                type: {
                  name: 'Number'
                }
              },
              thread_count: {
                required: false,
                serialized_name: 'properties.threadCount',
                type: {
                  name: 'Number'
                }
              },
              start_time: {
                required: false,
                serialized_name: 'properties.startTime',
                type: {
                  name: 'DateTime'
                }
              },
              total_processor_time: {
                required: false,
                serialized_name: 'properties.totalProcessorTime',
                type: {
                  name: 'String'
                }
              },
              user_processor_time: {
                required: false,
                serialized_name: 'properties.userProcessorTime',
                type: {
                  name: 'String'
                }
              },
              privileged_processor_time: {
                required: false,
                serialized_name: 'properties.privilegedProcessorTime',
                type: {
                  name: 'String'
                }
              },
              working_set64: {
                required: false,
                serialized_name: 'properties.workingSet64',
                type: {
                  name: 'Number'
                }
              },
              peak_working_set64: {
                required: false,
                serialized_name: 'properties.peakWorkingSet64',
                type: {
                  name: 'Number'
                }
              },
              private_memory_size64: {
                required: false,
                serialized_name: 'properties.privateMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              virtual_memory_size64: {
                required: false,
                serialized_name: 'properties.virtualMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              peak_virtual_memory_size64: {
                required: false,
                serialized_name: 'properties.peakVirtualMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              paged_system_memory_size64: {
                required: false,
                serialized_name: 'properties.pagedSystemMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              nonpaged_system_memory_size64: {
                required: false,
                serialized_name: 'properties.nonpagedSystemMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              paged_memory_size64: {
                required: false,
                serialized_name: 'properties.pagedMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              peak_paged_memory_size64: {
                required: false,
                serialized_name: 'properties.peakPagedMemorySize64',
                type: {
                  name: 'Number'
                }
              },
              time_stamp: {
                required: false,
                serialized_name: 'properties.timeStamp',
                type: {
                  name: 'DateTime'
                }
              },
              environment_variables: {
                required: false,
                serialized_name: 'properties.environmentVariables',
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
              is_scm_site: {
                required: false,
                serialized_name: 'properties.isScmSite',
                type: {
                  name: 'Boolean'
                }
              },
              is_web_job: {
                required: false,
                serialized_name: 'properties.isWebJob',
                type: {
                  name: 'Boolean'
                }
              },
              description: {
                required: false,
                serialized_name: 'properties.description',
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
