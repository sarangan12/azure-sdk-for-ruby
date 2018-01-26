# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::NotificationHubs::Mgmt::V2017_04_01
  #
  # Azure NotificationHub client
  #
  class Hubs
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Hubs class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [NotificationHubsManagementClient] reference to the NotificationHubsManagementClient
    attr_reader :client

    #
    # Checks the availability of the given notificationHub in a namespace.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param namespace_name [String] The namespace name.
    # @param parameters [CheckNameAvailabilityRequestParameters] The
    # notificationHub name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [CheckNameAvailabilityResponse] operation results.
    #
    def check_availability(resource_group_name, namespace_name, parameters, custom_headers = nil)
      response = check_availability_async(resource_group_name, namespace_name, parameters, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Checks the availability of the given notificationHub in a namespace.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param namespace_name [String] The namespace name.
    # @param parameters [CheckNameAvailabilityRequestParameters] The
    # notificationHub name.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def check_availability_with_http_info(resource_group_name, namespace_name, parameters, custom_headers = nil)
      check_availability_async(resource_group_name, namespace_name, parameters, custom_headers).value!
    end

    #
    # Checks the availability of the given notificationHub in a namespace.
    #
    # @param resource_group_name [String] The name of the resource group.
    # @param namespace_name [String] The namespace name.
    # @param parameters [CheckNameAvailabilityRequestParameters] The
    # notificationHub name.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def check_availability_async(resource_group_name, namespace_name, parameters, custom_headers = nil)
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'namespace_name is nil' if namespace_name.nil?
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?


      request_headers = {}

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckNameAvailabilityRequestParameters.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.NotificationHubs/namespaces/{namespaceName}/checkHubAvailability'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'resourceGroupName' => resource_group_name,'namespaceName' => namespace_name,'subscriptionId' => @client.subscription_id},
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
        unless status_code == 200
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::NotificationHubs::Mgmt::V2017_04_01::Models::CheckNameAvailabilityResponse.mapper()
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
