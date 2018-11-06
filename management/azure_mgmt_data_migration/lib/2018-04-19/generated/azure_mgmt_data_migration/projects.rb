# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::DataMigration::Mgmt::V2018_04_19
  #
  # Data Migration Client
  #
  class Projects
    include MsRestAzure

    #
    # Creates and initializes a new instance of the Projects class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [DataMigrationServiceClient] reference to the DataMigrationServiceClient
    attr_reader :client

    #
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Array<Project>] operation results.
    #
    def list_by_resource_group(group_name, service_name, custom_headers:nil)
      first_page = list_by_resource_group_as_lazy(group_name, service_name, custom_headers:custom_headers)
      first_page.get_all_items
    end

    #
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_with_http_info(group_name, service_name, custom_headers:nil)
      list_by_resource_group_async(group_name, service_name, custom_headers:custom_headers).value!
    end

    #
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_async(group_name, service_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'groupName' => group_name,'serviceName' => service_name},
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
            result_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::ProjectList.mapper()
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
    # Create or update project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The PUT method creates a new project or updates an existing one.
    #
    # @param parameters [Project] Information about the project
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Project] operation results.
    #
    def create_or_update(parameters, group_name, service_name, project_name, custom_headers:nil)
      response = create_or_update_async(parameters, group_name, service_name, project_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Create or update project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The PUT method creates a new project or updates an existing one.
    #
    # @param parameters [Project] Information about the project
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def create_or_update_with_http_info(parameters, group_name, service_name, project_name, custom_headers:nil)
      create_or_update_async(parameters, group_name, service_name, project_name, custom_headers:custom_headers).value!
    end

    #
    # Create or update project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The PUT method creates a new project or updates an existing one.
    #
    # @param parameters [Project] Information about the project
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def create_or_update_async(parameters, group_name, service_name, project_name, custom_headers:nil)
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::Project.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'groupName' => group_name,'serviceName' => service_name,'projectName' => project_name},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::Project.mapper()
            result.body = @client.deserialize(result_mapper, parsed_response)
          rescue Exception => e
            fail MsRest::DeserializationError.new('Error occurred in deserializing the response', e.message, e.backtrace, result)
          end
        end
        # Deserialize Response
        if status_code == 201
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::Project.mapper()
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
    # Get project information
    #
    # The project resource is a nested resource representing a stored migration
    # project. The GET method retrieves information about a project.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Project] operation results.
    #
    def get(group_name, service_name, project_name, custom_headers:nil)
      response = get_async(group_name, service_name, project_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get project information
    #
    # The project resource is a nested resource representing a stored migration
    # project. The GET method retrieves information about a project.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(group_name, service_name, project_name, custom_headers:nil)
      get_async(group_name, service_name, project_name, custom_headers:custom_headers).value!
    end

    #
    # Get project information
    #
    # The project resource is a nested resource representing a stored migration
    # project. The GET method retrieves information about a project.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(group_name, service_name, project_name, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'groupName' => group_name,'serviceName' => service_name,'projectName' => project_name},
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
            result_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::Project.mapper()
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
    # Delete project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The DELETE method deletes a project.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param delete_running_tasks [Boolean] Delete the resource even if it contains
    # running tasks
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def delete(group_name, service_name, project_name, delete_running_tasks:nil, custom_headers:nil)
      response = delete_async(group_name, service_name, project_name, delete_running_tasks:delete_running_tasks, custom_headers:custom_headers).value!
      nil
    end

    #
    # Delete project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The DELETE method deletes a project.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param delete_running_tasks [Boolean] Delete the resource even if it contains
    # running tasks
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def delete_with_http_info(group_name, service_name, project_name, delete_running_tasks:nil, custom_headers:nil)
      delete_async(group_name, service_name, project_name, delete_running_tasks:delete_running_tasks, custom_headers:custom_headers).value!
    end

    #
    # Delete project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The DELETE method deletes a project.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param delete_running_tasks [Boolean] Delete the resource even if it contains
    # running tasks
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def delete_async(group_name, service_name, project_name, delete_running_tasks:nil, custom_headers:nil)
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'groupName' => group_name,'serviceName' => service_name,'projectName' => project_name},
          query_params: {'deleteRunningTasks' => delete_running_tasks,'api-version' => @client.api_version},
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
    # Update project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The PATCH method updates an existing project.
    #
    # @param parameters [Project] Information about the project
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [Project] operation results.
    #
    def update(parameters, group_name, service_name, project_name, custom_headers:nil)
      response = update_async(parameters, group_name, service_name, project_name, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Update project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The PATCH method updates an existing project.
    #
    # @param parameters [Project] Information about the project
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def update_with_http_info(parameters, group_name, service_name, project_name, custom_headers:nil)
      update_async(parameters, group_name, service_name, project_name, custom_headers:custom_headers).value!
    end

    #
    # Update project
    #
    # The project resource is a nested resource representing a stored migration
    # project. The PATCH method updates an existing project.
    #
    # @param parameters [Project] Information about the project
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param project_name [String] Name of the project
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def update_async(parameters, group_name, service_name, project_name, custom_headers:nil)
      fail ArgumentError, 'parameters is nil' if parameters.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'group_name is nil' if group_name.nil?
      fail ArgumentError, 'service_name is nil' if service_name.nil?
      fail ArgumentError, 'project_name is nil' if project_name.nil?
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?

      # Serialize Request
      request_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::Project.mapper()
      request_content = @client.serialize(request_mapper,  parameters)
      request_content = request_content != nil ? JSON.generate(request_content, quirks_mode: true) : nil

      path_template = 'subscriptions/{subscriptionId}/resourceGroups/{groupName}/providers/Microsoft.DataMigration/services/{serviceName}/projects/{projectName}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'subscriptionId' => @client.subscription_id,'groupName' => group_name,'serviceName' => service_name,'projectName' => project_name},
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
          fail MsRest::HttpOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?
        # Deserialize Response
        if status_code == 200
          begin
            parsed_response = response_content.to_s.empty? ? nil : JSON.load(response_content)
            result_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::Project.mapper()
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
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProjectList] operation results.
    #
    def list_by_resource_group_next(next_page_link, custom_headers:nil)
      response = list_by_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def list_by_resource_group_next_with_http_info(next_page_link, custom_headers:nil)
      list_by_resource_group_next_async(next_page_link, custom_headers:custom_headers).value!
    end

    #
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param next_page_link [String] The NextLink from the previous successful call
    # to List operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def list_by_resource_group_next_async(next_page_link, custom_headers:nil)
      fail ArgumentError, 'next_page_link is nil' if next_page_link.nil?


      request_headers = {}
      request_headers['Content-Type'] = 'application/json; charset=utf-8'

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
            result_mapper = Azure::DataMigration::Mgmt::V2018_04_19::Models::ProjectList.mapper()
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
    # Get projects in a service
    #
    # The project resource is a nested resource representing a stored migration
    # project. This method returns a list of projects owned by a service resource.
    #
    # @param group_name [String] Name of the resource group
    # @param service_name [String] Name of the service
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [ProjectList] which provide lazy access to pages of the response.
    #
    def list_by_resource_group_as_lazy(group_name, service_name, custom_headers:nil)
      response = list_by_resource_group_async(group_name, service_name, custom_headers:custom_headers).value!
      unless response.nil?
        page = response.body
        page.next_method = Proc.new do |next_page_link|
          list_by_resource_group_next_async(next_page_link, custom_headers:custom_headers)
        end
        page
      end
    end

  end
end