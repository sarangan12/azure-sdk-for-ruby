# encoding: utf-8
# Copyright (c) Microsoft Corporation. All rights reserved.
# Licensed under the MIT License. See License.txt in the project root for
# license information.
#
# Code generated by Microsoft (R) AutoRest Code Generator 1.1.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::RecoveryServicesBackup
  #
  # Open API 2.0 Specs for Azure RecoveryServices Backup service
  #
  class JobOperationResults
    include MsRestAzure

    #
    # Creates and initializes a new instance of the JobOperationResults class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Fetches the result of any operation.
    # the operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param job_name [String] Job name whose operation result has to be fetched.
    # @param operation_id [String] OperationID which represents the operation whose
    # result has to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    #
    def get(vault_name, resource_group_name, job_name, operation_id, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, job_name, operation_id, custom_headers).value!
      nil
    end

    #
    # Fetches the result of any operation.
    # the operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param job_name [String] Job name whose operation result has to be fetched.
    # @param operation_id [String] OperationID which represents the operation whose
    # result has to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, job_name, operation_id, custom_headers = nil)
      get_async(vault_name, resource_group_name, job_name, operation_id, custom_headers).value!
    end

    #
    # Fetches the result of any operation.
    # the operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param job_name [String] Job name whose operation result has to be fetched.
    # @param operation_id [String] OperationID which represents the operation whose
    # result has to be fetched.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, job_name, operation_id, custom_headers = nil)
      api_version = '2016-12-01'
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'job_name is nil' if job_name.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupJobs/{jobName}/operationResults/{operationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'jobName' => job_name,'operationId' => operation_id},
          query_params: {'api-version' => api_version},
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
