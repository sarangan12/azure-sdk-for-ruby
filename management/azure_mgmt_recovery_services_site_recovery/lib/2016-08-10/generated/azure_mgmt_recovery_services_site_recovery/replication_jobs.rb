# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10
  #
  # ReplicationJobs
  #
  class ReplicationJobs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ReplicationJobs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [SiteRecoveryManagementClient] reference to the SiteRecoveryManagementClient
    attr_reader :client

    #
    # Resumes the specified job.
    #
    # The operation to resume an Azure Site Recovery job
    #
    # @param job_name [String] Job identifier.
    # @param resume_job_params [ResumeJobParams] Resume rob comments.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def resume(job_name, resume_job_params, custom_headers = nil)
      response = resume_async(job_name, resume_job_params, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param job_name [String] Job identifier.
    # @param resume_job_params [ResumeJobParams] Resume rob comments.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def resume_async(job_name, resume_job_params, custom_headers = nil)
      # Send request
      promise = begin_resume_async(job_name, resume_job_params, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Restarts the specified job.
    #
    # The operation to restart an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def restart(job_name, custom_headers = nil)
      response = restart_async(job_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param job_name [String] Job identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def restart_async(job_name, custom_headers = nil)
      # Send request
      promise = begin_restart_async(job_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Cancels the specified job.
    #
    # The operation to cancel an Azure Site Recovery job.
    #
    # @param job_name [String] Job indentifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def cancel(job_name, custom_headers = nil)
      response = cancel_async(job_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param job_name [String] Job indentifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def cancel_async(job_name, custom_headers = nil)
      # Send request
      promise = begin_cancel_async(job_name, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the job details.
    #
    # Get the details of an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def get(job_name, custom_headers = nil)
      response = get_async(job_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the job details.
    #
    # Get the details of an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(job_name, custom_headers = nil)
      get_async(job_name, custom_headers).value!
    end

    #
    # Gets the job details.
    #
    # Get the details of an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(job_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationJobs/{jobName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'jobName' => job_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Exports the details of the Azure Site Recovery jobs of the vault.
    #
    # The operation to export the details of the Azure Site Recovery jobs of the
    # vault.
    #
    # @param job_query_parameter [JobQueryParameter] job query filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def export(job_query_parameter, custom_headers = nil)
      response = export_async(job_query_parameter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param job_query_parameter [JobQueryParameter] job query filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def export_async(job_query_parameter, custom_headers = nil)
      # Send request
      promise = begin_export_async(job_query_parameter, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Job>] operation results.
    #
    def list(filter = nil, custom_headers = nil)
      first_page = list_as_lazy(filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(filter = nil, custom_headers = nil)
      list_async(filter, custom_headers).value!
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param filter [String] OData filter options.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationJobs'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version,'$filter' => filter},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Resumes the specified job.
    #
    # The operation to resume an Azure Site Recovery job
    #
    # @param job_name [String] Job identifier.
    # @param resume_job_params [ResumeJobParams] Resume rob comments.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def begin_resume(job_name, resume_job_params, custom_headers = nil)
      response = begin_resume_async(job_name, resume_job_params, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Resumes the specified job.
    #
    # The operation to resume an Azure Site Recovery job
    #
    # @param job_name [String] Job identifier.
    # @param resume_job_params [ResumeJobParams] Resume rob comments.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_resume_with_http_info(job_name, resume_job_params, custom_headers = nil)
      begin_resume_async(job_name, resume_job_params, custom_headers).value!
    end

    #
    # Resumes the specified job.
    #
    # The operation to resume an Azure Site Recovery job
    #
    # @param job_name [String] Job identifier.
    # @param resume_job_params [ResumeJobParams] Resume rob comments.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_resume_async(job_name, resume_job_params, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'resume_job_params is nil' if resume_job_params.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::ResumeJobParams.mapper()
      request_content = @client.serialize(request_mapper,  resume_job_params)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationJobs/{jobName}/resume'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'jobName' => job_name},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Restarts the specified job.
    #
    # The operation to restart an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def begin_restart(job_name, custom_headers = nil)
      response = begin_restart_async(job_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Restarts the specified job.
    #
    # The operation to restart an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_restart_with_http_info(job_name, custom_headers = nil)
      begin_restart_async(job_name, custom_headers).value!
    end

    #
    # Restarts the specified job.
    #
    # The operation to restart an Azure Site Recovery job.
    #
    # @param job_name [String] Job identifier.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_restart_async(job_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationJobs/{jobName}/restart'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'jobName' => job_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Cancels the specified job.
    #
    # The operation to cancel an Azure Site Recovery job.
    #
    # @param job_name [String] Job indentifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def begin_cancel(job_name, custom_headers = nil)
      response = begin_cancel_async(job_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Cancels the specified job.
    #
    # The operation to cancel an Azure Site Recovery job.
    #
    # @param job_name [String] Job indentifier.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_cancel_with_http_info(job_name, custom_headers = nil)
      begin_cancel_async(job_name, custom_headers).value!
    end

    #
    # Cancels the specified job.
    #
    # The operation to cancel an Azure Site Recovery job.
    #
    # @param job_name [String] Job indentifier.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_cancel_async(job_name, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationJobs/{jobName}/cancel'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id,'jobName' => job_name},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Exports the details of the Azure Site Recovery jobs of the vault.
    #
    # The operation to export the details of the Azure Site Recovery jobs of the
    # vault.
    #
    # @param job_query_parameter [JobQueryParameter] job query filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Job] operation results.
    #
    def begin_export(job_query_parameter, custom_headers = nil)
      response = begin_export_async(job_query_parameter, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Exports the details of the Azure Site Recovery jobs of the vault.
    #
    # The operation to export the details of the Azure Site Recovery jobs of the
    # vault.
    #
    # @param job_query_parameter [JobQueryParameter] job query filter.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_export_with_http_info(job_query_parameter, custom_headers = nil)
      begin_export_async(job_query_parameter, custom_headers).value!
    end

    #
    # Exports the details of the Azure Site Recovery jobs of the vault.
    #
    # The operation to export the details of the Azure Site Recovery jobs of the
    # vault.
    #
    # @param job_query_parameter [JobQueryParameter] job query filter.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_export_async(job_query_parameter, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.resource_name is nil' if @client.resource_name.nil?
      fail ArgumentError, '@client.resource_group_name is nil' if @client.resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'job_query_parameter is nil' if job_query_parameter.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobQueryParameter.mapper()
      request_content = @client.serialize(request_mapper,  job_query_parameter)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{resourceName}/replicationJobs/export'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceName' => @client.resource_name,'resourceGroupName' => @client.resource_group_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:post, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::Job.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobCollection] operation results.
    #
    def list_next(next_page_link, custom_headers = nil)
      response = list_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_next_with_http_info(next_page_link, custom_headers = nil)
      list_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_next_async(next_page_link, custom_headers = nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = '{nextLink}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          skip_encoding_path_params: {'nextLink' => next_page_link},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::RecoveryServicesSiteRecovery::Mgmt::V2016_08_10::Models::JobCollection.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

    #
    # Gets the list of jobs.
    #
    # Gets the list of Azure Site Recovery Jobs for the vault.
    #
    # @param filter [String] OData filter options.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [JobCollection] which provide lazy access to pages of the response.
    #
    def list_as_lazy(filter = nil, custom_headers = nil)
      response = list_async(filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
