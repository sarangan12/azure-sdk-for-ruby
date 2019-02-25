# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::CognitiveServices::LuisAuthoring::V2_0
  #
  # Permissions
  #
  class Permissions
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Permissions class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [LuisAuthoringClient] reference to the LuisAuthoringClient
    attr_reader :client

    #
    # Gets the list of user emails that have permissions to access your
    # application.
    #
    # @param app_id The application ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [UserAccessList] operation results.
    #
    def list(app_id, custom_headers:nil)
      response = list_async(app_id, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Gets the list of user emails that have permissions to access your
    # application.
    #
    # @param app_id The application ID.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_with_http_info(app_id, custom_headers:nil)
      list_async(app_id, custom_headers:custom_headers).value!
    end

    #
    # Gets the list of user emails that have permissions to access your
    # application.
    #
    # @param app_id The application ID.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_async(app_id, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'apps/{appId}/permissions'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
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
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserAccessList.mapper()
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
    # Adds a user to the allowed list of users to access this LUIS application.
    # Users are added using their email address.
    #
    # @param app_id The application ID.
    # @param user_to_add [UserCollaborator] A model containing the user's email
    # address.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def add(app_id, user_to_add, custom_headers:nil)
      response = add_async(app_id, user_to_add, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Adds a user to the allowed list of users to access this LUIS application.
    # Users are added using their email address.
    #
    # @param app_id The application ID.
    # @param user_to_add [UserCollaborator] A model containing the user's email
    # address.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def add_with_http_info(app_id, user_to_add, custom_headers:nil)
      add_async(app_id, user_to_add, custom_headers:custom_headers).value!
    end

    #
    # Adds a user to the allowed list of users to access this LUIS application.
    # Users are added using their email address.
    #
    # @param app_id The application ID.
    # @param user_to_add [UserCollaborator] A model containing the user's email
    # address.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def add_async(app_id, user_to_add, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'user_to_add is nil' if user_to_add.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserCollaborator.mapper()
      request_content = @client.serialize(request_mapper,  user_to_add)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/permissions'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus.mapper()
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
    # Removes a user from the allowed list of users to access this LUIS
    # application. Users are removed using their email address.
    #
    # @param app_id The application ID.
    # @param user_to_delete [UserCollaborator] A model containing the user's email
    # address.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def delete(app_id, user_to_delete, custom_headers:nil)
      response = delete_async(app_id, user_to_delete, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Removes a user from the allowed list of users to access this LUIS
    # application. Users are removed using their email address.
    #
    # @param app_id The application ID.
    # @param user_to_delete [UserCollaborator] A model containing the user's email
    # address.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(app_id, user_to_delete, custom_headers:nil)
      delete_async(app_id, user_to_delete, custom_headers:custom_headers).value!
    end

    #
    # Removes a user from the allowed list of users to access this LUIS
    # application. Users are removed using their email address.
    #
    # @param app_id The application ID.
    # @param user_to_delete [UserCollaborator] A model containing the user's email
    # address.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(app_id, user_to_delete, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'user_to_delete is nil' if user_to_delete.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::UserCollaborator.mapper()
      request_content = @client.serialize(request_mapper,  user_to_delete)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/permissions'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
          body: request_content,
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:delete, path_template, options)

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
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus.mapper()
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
    # Replaces the current users access list with the one sent in the body. If an
    # empty list is sent, all access to other users will be removed.
    #
    # @param app_id The application ID.
    # @param collaborators [CollaboratorsArray] A model containing a list of user's
    # email addresses.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def update(app_id, collaborators, custom_headers:nil)
      response = update_async(app_id, collaborators, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Replaces the current users access list with the one sent in the body. If an
    # empty list is sent, all access to other users will be removed.
    #
    # @param app_id The application ID.
    # @param collaborators [CollaboratorsArray] A model containing a list of user's
    # email addresses.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(app_id, collaborators, custom_headers:nil)
      update_async(app_id, collaborators, custom_headers:custom_headers).value!
    end

    #
    # Replaces the current users access list with the one sent in the body. If an
    # empty list is sent, all access to other users will be removed.
    #
    # @param app_id The application ID.
    # @param collaborators [CollaboratorsArray] A model containing a list of user's
    # email addresses.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(app_id, collaborators, custom_headers:nil)
      fail ArgumentError, '@client.endpoint is nil' if @client.endpoint.nil?
      fail ArgumentError, 'app_id is nil' if app_id.nil?
      fail ArgumentError, 'collaborators is nil' if collaborators.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::CollaboratorsArray.mapper()
      request_content = @client.serialize(request_mapper,  collaborators)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'apps/{appId}/permissions'

      request_url = @base_url || @client.base_url
    request_url = request_url.gsub('{Endpoint}', @client.endpoint)

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'appId' => app_id},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::CognitiveServices::LuisAuthoring::V2_0::Models::OperationStatus.mapper()
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
