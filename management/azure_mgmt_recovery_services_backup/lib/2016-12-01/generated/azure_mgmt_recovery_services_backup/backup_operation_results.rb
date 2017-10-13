# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  #
  # BackupOperationResults
  #
  class BackupOperationResults
    include MsRestAzure

    #
    # Creates and initializes a new instance of the BackupOperationResults class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Provides the status of the delete operations such as deleting backed up item.
    # Once the operation has started, the status code in the response would be
    # Accepted. It will continue to be in this state till it reaches completion. On
    # successful completion, the status code will be OK. This method expects
    # OperationID as an argument. OperationID is part of the Location header of the
    # operation response.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param operation_id [String] OperationID which represents the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def get(vault_name, resource_group_name, operation_id, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, operation_id, custom_headers).value!
      nil
    end

    #
    # Provides the status of the delete operations such as deleting backed up item.
    # Once the operation has started, the status code in the response would be
    # Accepted. It will continue to be in this state till it reaches completion. On
    # successful completion, the status code will be OK. This method expects
    # OperationID as an argument. OperationID is part of the Location header of the
    # operation response.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param operation_id [String] OperationID which represents the operation.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, operation_id, custom_headers = nil)
      get_async(vault_name, resource_group_name, operation_id, custom_headers).value!
    end

    #
    # Provides the status of the delete operations such as deleting backed up item.
    # Once the operation has started, the status code in the response would be
    # Accepted. It will continue to be in this state till it reaches completion. On
    # successful completion, the status code will be OK. This method expects
    # OperationID as an argument. OperationID is part of the Location header of the
    # operation response.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param operation_id [String] OperationID which represents the operation.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, operation_id, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupOperationResults/{operationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'operationId' => operation_id},
          query_params: {'api-version' => @client.api_version},
          headers: request_headers.merge(custom_headers || {}),
          base_url: request_url
      }
      promise = @client.make_request_async(:get, path_template, options)

      promise = promise.then do |result|
        http_response = result.response
        status_code = http_response.status
        response_content = http_response.body
        unless status_code == 200 || status_code == 202 || status_code == 204
          error_model = JSON.load(response_content)
          fail MsRestAzure::AzureOperationError.new(result.request, http_response, error_model)
        end

        result.request_id = http_response['x-ms-request-id'] unless http_response['x-ms-request-id'].nil?

        result
      end

      promise.execute
    end

  end
end
