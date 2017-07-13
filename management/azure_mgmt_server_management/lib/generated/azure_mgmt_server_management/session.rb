# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 1.2.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::ServerManagement
  #
  # REST API for Azure Server Management Service.
  #
  class Session
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Session class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [ServerManagement] reference to the ServerManagement
    attr_reader :client

    #
    # Creates a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param user_name [String] Encrypted User name to be used to connect to node.
    # @param password [String] Encrypted Password associated with user name.
    # @param retention_period [RetentionPeriod] Session retention period. Possible
    # values include: 'Session', 'Persistent'
    # @param credential_data_format [CredentialDataFormat] Credential data format.
    # Possible values include: 'RsaEncrypted'
    # @param encryption_certificate_thumbprint [String] Encryption certificate
    # thumbprint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SessionResource] operation results.
    #
    def create(resource_group_name, node_name, session, user_name = nil, password = nil, retention_period = nil, credential_data_format = nil, encryption_certificate_thumbprint = nil, custom_headers = nil)
      response = create_async(resource_group_name, node_name, session, user_name, password, retention_period, credential_data_format, encryption_certificate_thumbprint, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param user_name [String] Encrypted User name to be used to connect to node.
    # @param password [String] Encrypted Password associated with user name.
    # @param retention_period [RetentionPeriod] Session retention period. Possible
    # values include: 'Session', 'Persistent'
    # @param credential_data_format [CredentialDataFormat] Credential data format.
    # Possible values include: 'RsaEncrypted'
    # @param encryption_certificate_thumbprint [String] Encryption certificate
    # thumbprint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Concurrent::Promise] promise which provides async access to http
    # response.
    #
    def create_async(resource_group_name, node_name, session, user_name = nil, password = nil, retention_period = nil, credential_data_format = nil, encryption_certificate_thumbprint = nil, custom_headers = nil)
      # Send request
      promise = begin_create_async(resource_group_name, node_name, session, user_name, password, retention_period, credential_data_format, encryption_certificate_thumbprint, custom_headers)

      promise = promise.then do |response|
        # Defining deserialization method.
        deserialize_method = lambda do |parsed_response|
          result_mapper = Azure::ARM::ServerManagement::Models::SessionResource.mapper()
          parsed_response = @client.deserialize(result_mapper, parsed_response)
        end

        # Waiting for response.
        @client.get_long_running_operation_result(response, deserialize_method)
      end

      promise
    end

    #
    # Deletes a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(resource_group_name, node_name, session, custom_headers = nil)
      response = delete_async(resource_group_name, node_name, session, custom_headers).value!
      nil
    end

    #
    # Deletes a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(resource_group_name, node_name, session, custom_headers = nil)
      delete_async(resource_group_name, node_name, session, custom_headers).value!
    end

    #
    # Deletes a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(resource_group_name, node_name, session, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'node_name is nil' if node_name.nil?
      fail ArgumentError, 'session is nil' if session.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServerManagement/nodes/{nodeName}/sessions/{session}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'nodeName' => node_name,'session' => session},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

    #
    # Gets a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SessionResource] operation results.
    #
    def get(resource_group_name, node_name, session, custom_headers = nil)
      response = get_async(resource_group_name, node_name, session, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(resource_group_name, node_name, session, custom_headers = nil)
      get_async(resource_group_name, node_name, session, custom_headers).value!
    end

    #
    # Gets a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(resource_group_name, node_name, session, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'node_name is nil' if node_name.nil?
      fail ArgumentError, 'session is nil' if session.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServerManagement/nodes/{nodeName}/sessions/{session}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'nodeName' => node_name,'session' => session},
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
            result_mapper = Azure::ARM::ServerManagement::Models::SessionResource.mapper()
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
    # Creates a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param user_name [String] Encrypted User name to be used to connect to node.
    # @param password [String] Encrypted Password associated with user name.
    # @param retention_period [RetentionPeriod] Session retention period. Possible
    # values include: 'Session', 'Persistent'
    # @param credential_data_format [CredentialDataFormat] Credential data format.
    # Possible values include: 'RsaEncrypted'
    # @param encryption_certificate_thumbprint [String] Encryption certificate
    # thumbprint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [SessionResource] operation results.
    #
    def begin_create(resource_group_name, node_name, session, user_name = nil, password = nil, retention_period = nil, credential_data_format = nil, encryption_certificate_thumbprint = nil, custom_headers = nil)
      response = begin_create_async(resource_group_name, node_name, session, user_name, password, retention_period, credential_data_format, encryption_certificate_thumbprint, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Creates a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param user_name [String] Encrypted User name to be used to connect to node.
    # @param password [String] Encrypted Password associated with user name.
    # @param retention_period [RetentionPeriod] Session retention period. Possible
    # values include: 'Session', 'Persistent'
    # @param credential_data_format [CredentialDataFormat] Credential data format.
    # Possible values include: 'RsaEncrypted'
    # @param encryption_certificate_thumbprint [String] Encryption certificate
    # thumbprint.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def begin_create_with_http_info(resource_group_name, node_name, session, user_name = nil, password = nil, retention_period = nil, credential_data_format = nil, encryption_certificate_thumbprint = nil, custom_headers = nil)
      begin_create_async(resource_group_name, node_name, session, user_name, password, retention_period, credential_data_format, encryption_certificate_thumbprint, custom_headers).value!
    end

    #
    # Creates a session for a node.
    #
    # @param resource_group_name [String] The resource group name uniquely
    # identifies the resource group within the user subscriptionId.
    # @param node_name [String] The node name (256 characters maximum).
    # @param session [String] The sessionId from the user.
    # @param user_name [String] Encrypted User name to be used to connect to node.
    # @param password [String] Encrypted Password associated with user name.
    # @param retention_period [RetentionPeriod] Session retention period. Possible
    # values include: 'Session', 'Persistent'
    # @param credential_data_format [CredentialDataFormat] Credential data format.
    # Possible values include: 'RsaEncrypted'
    # @param encryption_certificate_thumbprint [String] Encryption certificate
    # thumbprint.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def begin_create_async(resource_group_name, node_name, session, user_name = nil, password = nil, retention_period = nil, credential_data_format = nil, encryption_certificate_thumbprint = nil, custom_headers = nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, 'node_name is nil' if node_name.nil?
      fail ArgumentError, 'session is nil' if session.nil?

      session_parameters = SessionParameters.new
      unless user_name.nil? && password.nil? && retention_period.nil? && credential_data_format.nil? && encryption_certificate_thumbprint.nil?
        session_parameters.user_name = user_name
        session_parameters.password = password
        session_parameters.retention_period = retention_period
        session_parameters.credential_data_format = credential_data_format
        session_parameters.encryption_certificate_thumbprint = encryption_certificate_thumbprint
      end

      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Serialize Request
      request_mapper = Azure::ARM::ServerManagement::Models::SessionParameters.mapper()
      request_content = @client.serialize(request_mapper,  session_parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ServerManagement/nodes/{nodeName}/sessions/{session}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'resourceGroupName' => resource_group_name,'nodeName' => node_name,'session' => session},
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
        unless status_code == 200 || status_code == 201 || status_code == 202
          error_model = JSON.load(response_content)
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServerManagement::Models::SessionResource.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::ARM::ServerManagement::Models::SessionResource.mapper()
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
