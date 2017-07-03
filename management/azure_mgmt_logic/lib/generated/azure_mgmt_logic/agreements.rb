# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Logic
  #
  # REST API for Azure Logic Apps.
  #
  class Agreements
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Agreements class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LogicManagementClient] reference to the LogicManagementClient
    attr_reader :client

    #
    # Gets a list of integration account agreements.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<IntegrationAccountAgreement>] operation results.
    #
    def list_by_integration_accounts(resource_group_name, integration_account_name, top = nil, filter = nil, custom_headers = nil)
      first_page = list_by_integration_accounts_as_lazy(resource_group_name, integration_account_name, top, filter, custom_headers)
      first_page.get_all_items
    end

    #
    # Gets a list of integration account agreements.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_integration_accounts_with_http_info(resource_group_name, integration_account_name, top = nil, filter = nil, custom_headers = nil)
      list_by_integration_accounts_async(resource_group_name, integration_account_name, top, filter, custom_headers).value!
    end

    #
    # Gets a list of integration account agreements.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_integration_accounts_async(resource_group_name, integration_account_name, top = nil, filter = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/agreements'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name},
          query_params: {'api-version' => @client.api_version,'$top' => top,'$filter' => filter},
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
            result_mapper = Azure::ARM::Logic::Models::IntegrationAccountAgreementListResult.mapper()
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
    # Gets an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountAgreement] operation results.
    #
    def get(resource_group_name, integration_account_name, agreement_name, custom_headers = nil)
      response = get_async(resource_group_name, integration_account_name, agreement_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, integration_account_name, agreement_name, custom_headers = nil)
      get_async(resource_group_name, integration_account_name, agreement_name, custom_headers).value!
    end

    #
    # Gets an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, integration_account_name, agreement_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'agreement_name is nil' if agreement_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/agreements/{agreementName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'agreementName' => agreement_name},
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
            result_mapper = Azure::ARM::Logic::Models::IntegrationAccountAgreement.mapper()
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
    # Creates or updates an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param agreement [IntegrationAccountAgreement] The integration account
    # agreement.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountAgreement] operation results.
    #
    def create_or_update(resource_group_name, integration_account_name, agreement_name, agreement, custom_headers = nil)
      response = create_or_update_async(resource_group_name, integration_account_name, agreement_name, agreement, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param agreement [IntegrationAccountAgreement] The integration account
    # agreement.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, integration_account_name, agreement_name, agreement, custom_headers = nil)
      create_or_update_async(resource_group_name, integration_account_name, agreement_name, agreement, custom_headers).value!
    end

    #
    # Creates or updates an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param agreement [IntegrationAccountAgreement] The integration account
    # agreement.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, integration_account_name, agreement_name, agreement, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'agreement_name is nil' if agreement_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'agreement is nil' if agreement.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::Logic::Models::IntegrationAccountAgreement.mapper()
      request_content = @client.serialize(request_mapper,  agreement)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/agreements/{agreementName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'agreementName' => agreement_name},
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
            result_mapper = Azure::ARM::Logic::Models::IntegrationAccountAgreement.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::Logic::Models::IntegrationAccountAgreement.mapper()
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
    # Deletes an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, integration_account_name, agreement_name, custom_headers = nil)
      response = delete_async(resource_group_name, integration_account_name, agreement_name, custom_headers).value!
      nil
    end

    #
    # Deletes an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, integration_account_name, agreement_name, custom_headers = nil)
      delete_async(resource_group_name, integration_account_name, agreement_name, custom_headers).value!
    end

    #
    # Deletes an integration account agreement.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param agreement_name [String] The integration account agreement name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, integration_account_name, agreement_name, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'integration_account_name is nil' if integration_account_name.nil?
      fail ArgumentError, 'agreement_name is nil' if agreement_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Logic/integrationAccounts/{integrationAccountName}/agreements/{agreementName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'integrationAccountName' => integration_account_name,'agreementName' => agreement_name},
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
    # Gets a list of integration account agreements.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountAgreementListResult] operation results.
    #
    def list_by_integration_accounts_next(next_page_link, custom_headers = nil)
      response = list_by_integration_accounts_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a list of integration account agreements.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_integration_accounts_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_integration_accounts_next_async(next_page_link, custom_headers).value!
    end

    #
    # Gets a list of integration account agreements.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_integration_accounts_next_async(next_page_link, custom_headers = nil)
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
            result_mapper = Azure::ARM::Logic::Models::IntegrationAccountAgreementListResult.mapper()
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
    # Gets a list of integration account agreements.
    #
    # @param resource_group_name [String] The resource group name.
    # @param integration_account_name [String] The integration account name.
    # @param top [Integer] The number of items to be included in the result.
    # @param filter [String] The filter to apply on the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [IntegrationAccountAgreementListResult] which provide lazy access to
    # pages of the response.
    #
    def list_by_integration_accounts_as_lazy(resource_group_name, integration_account_name, top = nil, filter = nil, custom_headers = nil)
      response = list_by_integration_accounts_async(resource_group_name, integration_account_name, top, filter, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_integration_accounts_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
