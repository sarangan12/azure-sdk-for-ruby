# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Automation::Mgmt::V2015_10_31
  #
  # Automation Client
  #
  class NodeReports
    include MsRestAzure

    #
    # Creates and initializes a new instance of the NodeReports class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [AutomationClient] reference to the AutomationClient
    attr_reader :client

    #
    # Retrieve the Dsc node report list by node id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The parameters supplied to the list operation.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<DscNodeReport>] operation results.
    #
    def list_by_node(resource_group_name, automation_account_name, node_id, filter = nil, custom_headers = nil)
      first_page = list_by_node_as_lazy(resource_group_name, automation_account_name, node_id, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Retrieve the Dsc node report list by node id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The parameters supplied to the list operation.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_node_with_http_info(resource_group_name, automation_account_name, node_id, filter = nil, custom_headers = nil)
      list_by_node_async(resource_group_name, automation_account_name, node_id, filter, custom_headers).value!
    end

    #
    # Retrieve the Dsc node report list by node id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The parameters supplied to the list operation.
    # @param filter [String] The filter to apply on the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_node_async(resource_group_name, automation_account_name, node_id, filter = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'node_id is nil' if node_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/nodes/{nodeId}/reports'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'nodeId' => node_id,'subscriptionId' => @client.subscription_id},
          query_params: {'$filter' => filter,'api-version' => @client.api_version},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult.mapper()
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
    # Retrieve the Dsc node report data by node id and report id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The Dsc node id.
    # @param report_id [String] The report id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DscNodeReport] operation results.
    #
    def get(resource_group_name, automation_account_name, node_id, report_id, custom_headers = nil)
      response = get_async(resource_group_name, automation_account_name, node_id, report_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the Dsc node report data by node id and report id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The Dsc node id.
    # @param report_id [String] The report id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, automation_account_name, node_id, report_id, custom_headers = nil)
      get_async(resource_group_name, automation_account_name, node_id, report_id, custom_headers).value!
    end

    #
    # Retrieve the Dsc node report data by node id and report id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The Dsc node id.
    # @param report_id [String] The report id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, automation_account_name, node_id, report_id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'node_id is nil' if node_id.nil?
      fail ArgumentError, 'report_id is nil' if report_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/nodes/{nodeId}/reports/{reportId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'nodeId' => node_id,'reportId' => report_id,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReport.mapper()
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
    # Retrieve the Dsc node reports by node id and report id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The Dsc node id.
    # @param report_id [String] The report id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [NOT_IMPLEMENTED] operation results.
    #
    def get_content(resource_group_name, automation_account_name, node_id, report_id, custom_headers = nil)
      response = get_content_async(resource_group_name, automation_account_name, node_id, report_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the Dsc node reports by node id and report id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The Dsc node id.
    # @param report_id [String] The report id.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_content_with_http_info(resource_group_name, automation_account_name, node_id, report_id, custom_headers = nil)
      get_content_async(resource_group_name, automation_account_name, node_id, report_id, custom_headers).value!
    end

    #
    # Retrieve the Dsc node reports by node id and report id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The Dsc node id.
    # @param report_id [String] The report id.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_content_async(resource_group_name, automation_account_name, node_id, report_id, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'automation_account_name is nil' if automation_account_name.nil?
      fail ArgumentError, 'node_id is nil' if node_id.nil?
      fail ArgumentError, 'report_id is nil' if report_id.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Automation/automationAccounts/{automationAccountName}/nodes/{nodeId}/reports/{reportId}/content'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'automationAccountName' => automation_account_name,'nodeId' => node_id,'reportId' => report_id,'subscriptionId' => @client.subscription_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = {
              required: false,
              serialized_name: 'parsed_response',
              type: {
                name: 'Stream'
              }
            }
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
    # Retrieve the Dsc node report list by node id.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DscNodeReportListResult] operation results.
    #
    def list_by_node_next(next_page_link, custom_headers = nil)
      response = list_by_node_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Retrieve the Dsc node report list by node id.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_node_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_node_next_async(next_page_link, custom_headers).value!
    end

    #
    # Retrieve the Dsc node report list by node id.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_node_next_async(next_page_link, custom_headers = nil)
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Automation::Mgmt::V2015_10_31::Models::DscNodeReportListResult.mapper()
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
    # Retrieve the Dsc node report list by node id.
    #
    # @param resource_group_name [String] The resource group name.
    # @param automation_account_name [String] The automation account name.
    # @param node_id [String] The parameters supplied to the list operation.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DscNodeReportListResult] which provide lazy access to pages of the
    # response.
    #
    def list_by_node_as_lazy(resource_group_name, automation_account_name, node_id, filter = nil, custom_headers = nil)
      response = list_by_node_async(resource_group_name, automation_account_name, node_id, filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_node_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
