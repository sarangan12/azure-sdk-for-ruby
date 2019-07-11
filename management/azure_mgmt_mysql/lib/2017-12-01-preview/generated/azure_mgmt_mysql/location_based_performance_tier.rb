# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::Mysql::Mgmt::V2017_12_01_preview
  #
  # The Microsoft Azure management API provides create, read, update, and
  # delete functionality for Azure MySQL resources including servers,
  # databases, firewall rules, VNET rules, log files and configurations with
  # new business model.
  #
  class LocationBasedPerformanceTier
    include MsRestAzure

    #
    # Creates and initializes a new instance of the LocationBasedPerformanceTier class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [MySQLManagementClient] reference to the MySQLManagementClient
    attr_reader :client

    #
    # List all the performance tiers at specified location in a given subscription.
    #
    # @param location_name [String] The name of the location.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [PerformanceTierListResult] operation results.
    #
    def list(location_name, custom_headers:nil)
      response = list_async(location_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # List all the performance tiers at specified location in a given subscription.
    #
    # @param location_name [String] The name of the location.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(location_name, custom_headers:nil)
      list_async(location_name, custom_headers:custom_headers).value!
    end

    #
    # List all the performance tiers at specified location in a given subscription.
    #
    # @param location_name [String] The name of the location.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(location_name, custom_headers:nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'location_name is nil' if location_name.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/providers/Microsoft.DBforMySQL/locations/{locationName}/performanceTiers'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'locationName' => location_name},
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
        result.correlation_request_id = http_response['x-ms-correlation-request-id'] unless http_response['x-ms-correlation-request-id'].nil?
        result.client_request_id = http_response['x-ms-client-request-id'] unless http_response['x-ms-client-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::Mysql::Mgmt::V2017_12_01_preview::Models::PerformanceTierListResult.mapper()
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
