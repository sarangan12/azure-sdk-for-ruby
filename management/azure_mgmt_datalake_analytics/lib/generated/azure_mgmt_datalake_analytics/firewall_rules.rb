# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::DataLakeAnalytics
  #
  # Creates an Azure Data Lake Analytics account management client.
  #
  class FirewallRules
    include MsRestAzure

    #
    # Creates and initializes a new instance of the FirewallRules class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataLakeAnalyticsAccountManagementClient] reference to the DataLakeAnalyticsAccountManagementClient
    attr_reader :client

    #
    # Creates or updates the specified firewall rule. During update, the firewall
    # rule with the specified name will be replaced with this new firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # add or replace the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to create or
    # update.
    # @param parameters [FirewallRule] Parameters supplied to create or update the
    # firewall rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [FirewallRule] operation results.
    #
    def create_or_update(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers = nil)
      response = create_or_update_async(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates or updates the specified firewall rule. During update, the firewall
    # rule with the specified name will be replaced with this new firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # add or replace the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to create or
    # update.
    # @param parameters [FirewallRule] Parameters supplied to create or update the
    # firewall rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers = nil)
      create_or_update_async(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers).value!
    end

    #
    # Creates or updates the specified firewall rule. During update, the firewall
    # rule with the specified name will be replaced with this new firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # add or replace the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to create or
    # update.
    # @param parameters [FirewallRule] Parameters supplied to create or update the
    # firewall rule.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'firewall_rule_name is nil' if firewall_rule_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::DataLakeAnalytics::Models::FirewallRule.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/firewallRules/{firewallRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'firewallRuleName' => firewall_rule_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::FirewallRule.mapper()
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
    # Updates the specified firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to update the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to update.
    # @param parameters [UpdateFirewallRuleParameters] Parameters supplied to
    # update the firewall rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [FirewallRule] operation results.
    #
    def update(resource_group_name, account_name, firewall_rule_name, parameters = nil, custom_headers = nil)
      response = update_async(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Updates the specified firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to update the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to update.
    # @param parameters [UpdateFirewallRuleParameters] Parameters supplied to
    # update the firewall rule.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(resource_group_name, account_name, firewall_rule_name, parameters = nil, custom_headers = nil)
      update_async(resource_group_name, account_name, firewall_rule_name, parameters, custom_headers).value!
    end

    #
    # Updates the specified firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account to
    # which to update the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to update.
    # @param parameters [UpdateFirewallRuleParameters] Parameters supplied to
    # update the firewall rule.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(resource_group_name, account_name, firewall_rule_name, parameters = nil, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'firewall_rule_name is nil' if firewall_rule_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::DataLakeAnalytics::Models::UpdateFirewallRuleParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/firewallRules/{firewallRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'firewallRuleName' => firewall_rule_name,'subscriptionId' => @client.subscription_id},
          query_params: {'api-version' => @client.api_version},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:patch, path_template, options)

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
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::FirewallRule.mapper()
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
    # Deletes the specified firewall rule from the specified Data Lake Analytics
    # account
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to delete the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, account_name, firewall_rule_name, custom_headers = nil)
      response = delete_async(resource_group_name, account_name, firewall_rule_name, custom_headers).value!
      nil
    end

    #
    # Deletes the specified firewall rule from the specified Data Lake Analytics
    # account
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to delete the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to delete.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, account_name, firewall_rule_name, custom_headers = nil)
      delete_async(resource_group_name, account_name, firewall_rule_name, custom_headers).value!
    end

    #
    # Deletes the specified firewall rule from the specified Data Lake Analytics
    # account
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to delete the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to delete.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, account_name, firewall_rule_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'firewall_rule_name is nil' if firewall_rule_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/firewallRules/{firewallRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'firewallRuleName' => firewall_rule_name,'subscriptionId' => @client.subscription_id},
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
    # Gets the specified Data Lake Analytics firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [FirewallRule] operation results.
    #
    def get(resource_group_name, account_name, firewall_rule_name, custom_headers = nil)
      response = get_async(resource_group_name, account_name, firewall_rule_name, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the specified Data Lake Analytics firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to retrieve.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, account_name, firewall_rule_name, custom_headers = nil)
      get_async(resource_group_name, account_name, firewall_rule_name, custom_headers).value!
    end

    #
    # Gets the specified Data Lake Analytics firewall rule.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rule.
    # @param firewall_rule_name [String] The name of the firewall rule to retrieve.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, account_name, firewall_rule_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, 'firewall_rule_name is nil' if firewall_rule_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/firewallRules/{firewallRuleName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'firewallRuleName' => firewall_rule_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::FirewallRule.mapper()
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
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rules.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<FirewallRule>] operation results.
    #
    def list_by_account(resource_group_name, account_name, custom_headers = nil)
      first_page = list_by_account_as_lazy(resource_group_name, account_name, custom_headers)
      first_page.get_all_items
    end

    #
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rules.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_account_with_http_info(resource_group_name, account_name, custom_headers = nil)
      list_by_account_async(resource_group_name, account_name, custom_headers).value!
    end

    #
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rules.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_account_async(resource_group_name, account_name, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'account_name is nil' if account_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.DataLakeAnalytics/accounts/{accountName}/firewallRules'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'accountName' => account_name,'subscriptionId' => @client.subscription_id},
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
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::DataLakeAnalyticsFirewallRuleListResult.mapper()
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
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataLakeAnalyticsFirewallRuleListResult] operation results.
    #
    def list_by_account_next(next_page_link, custom_headers = nil)
      response = list_by_account_next_async(next_page_link, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_account_next_with_http_info(next_page_link, custom_headers = nil)
      list_by_account_next_async(next_page_link, custom_headers).value!
    end

    #
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_account_next_async(next_page_link, custom_headers = nil)
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
            result_mapper = Azure::ARM::DataLakeAnalytics::Models::DataLakeAnalyticsFirewallRuleListResult.mapper()
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
    # Lists the Data Lake Analytics firewall rules within the specified Data Lake
    # Analytics account.
    #
    # @param resource_group_name [String] The name of the Azure resource group that
    # contains the Data Lake Analytics account.
    # @param account_name [String] The name of the Data Lake Analytics account from
    # which to get the firewall rules.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [DataLakeAnalyticsFirewallRuleListResult] which provide lazy access
    # to pages of the response.
    #
    def list_by_account_as_lazy(resource_group_name, account_name, custom_headers = nil)
      response = list_by_account_async(resource_group_name, account_name, custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_account_next_async(next_page_link, custom_headers)
        end
        page
      end
    end

  end
end
