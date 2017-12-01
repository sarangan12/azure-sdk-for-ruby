# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::OperationalInsights::Mgmt::V2015_11_01_preview
  #
  # Azure Log Analytics API reference
  #
  class LinkedServices
    include MsRestAzure

    #
    # Creates and initializes a new instance of the LinkedServices class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AzureLogAnalytics] reference to the AzureLogAnalytics
    attr_reader :client

    #
    # Create or update a linked service.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that will
    # contain the linkedServices resource
    # @param linked_service_name [String] Name of the linkedServices resource
    # @param parameters [LinkedService] The parameters required to create or update
    # a linked service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LinkedService] operation results.
    #
    def create_or_update(resource_group_name, workspace_name, linked_service_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, workspace_name, linked_service_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update a linked service.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that will
    # contain the linkedServices resource
    # @param linked_service_name [String] Name of the linkedServices resource
    # @param parameters [LinkedService] The parameters required to create or update
    # a linked service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, workspace_name, linked_service_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, workspace_name, linked_service_name, parameters, custom_headers).value!
    end

    #
    # Create or update a linked service.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that will
    # contain the linkedServices resource
    # @param linked_service_name [String] Name of the linkedServices resource
    # @param parameters [LinkedService] The parameters required to create or update
    # a linked service.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, workspace_name, linked_service_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'linked_service_name is nil' if linked_service_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedService.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/linkedServices/{linkedServiceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'linkedServiceName' => linked_service_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:put, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 201
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedService.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedService.mapper()
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
    # Deletes a linked service instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linkedServices resource
    # @param linked_service_name [String] Name of the linked service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, workspace_name, linked_service_name, custom_headers = nil)
      response = delete_async(resource_group_name, workspace_name, linked_service_name, custom_headers).value!
      nil
    end

    #
    # Deletes a linked service instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linkedServices resource
    # @param linked_service_name [String] Name of the linked service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, workspace_name, linked_service_name, custom_headers = nil)
      delete_async(resource_group_name, workspace_name, linked_service_name, custom_headers).value!
    end

    #
    # Deletes a linked service instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linkedServices resource
    # @param linked_service_name [String] Name of the linked service.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, workspace_name, linked_service_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'linked_service_name is nil' if linked_service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/linkedServices/{linkedServiceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'linkedServiceName' => linked_service_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets a linked service instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linkedServices resource
    # @param linked_service_name [String] Name of the linked service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LinkedService] operation results.
    #
    def get(resource_group_name, workspace_name, linked_service_name, custom_headers = nil)
      response = get_async(resource_group_name, workspace_name, linked_service_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a linked service instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linkedServices resource
    # @param linked_service_name [String] Name of the linked service.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, workspace_name, linked_service_name, custom_headers = nil)
      get_async(resource_group_name, workspace_name, linked_service_name, custom_headers).value!
    end

    #
    # Gets a linked service instance.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linkedServices resource
    # @param linked_service_name [String] Name of the linked service.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, workspace_name, linked_service_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, 'linked_service_name is nil' if linked_service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/linkedServices/{linkedServiceName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'linkedServiceName' => linked_service_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedService.mapper()
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
    # Gets the linked services instances in a workspace.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linked services.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [LinkedServiceListResult] operation results.
    #
    def list_by_workspace(resource_group_name, workspace_name, custom_headers = nil)
      response = list_by_workspace_async(resource_group_name, workspace_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the linked services instances in a workspace.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linked services.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_workspace_with_http_info(resource_group_name, workspace_name, custom_headers = nil)
      list_by_workspace_async(resource_group_name, workspace_name, custom_headers).value!
    end

    #
    # Gets the linked services instances in a workspace.
    #
    # @param resource_group_name [String] The name of the resource group to get.
    # The name is case insensitive.
    # @param workspace_name [String] Name of the Log Analytics Workspace that
    # contains the linked services.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_workspace_async(resource_group_name, workspace_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MaxLength': '90'" if !resource_group_name.nil? && resource_group_name.length > 90
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'MinLength': '1'" if !resource_group_name.nil? && resource_group_name.length < 1
      fail ArgumentError, "'resource_group_name' should satisfy the constraint - 'Pattern': '^[-\w\._\(\)]+$'" if !resource_group_name.nil? && resource_group_name.match(Regexp.new('^^[-\w\._\(\)]+$$')).nil?
      fail ArgumentError, 'workspace_name is nil' if workspace_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourcegroups/{resourceGroupName}/providers/Microsoft.OperationalInsights/workspaces/{workspaceName}/linkedServices'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'workspaceName' => workspace_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::OperationalInsights::Mgmt::V2015_11_01_preview::Models::LinkedServiceListResult.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end

        result
      end

      promise.execute
    end

  end
end
