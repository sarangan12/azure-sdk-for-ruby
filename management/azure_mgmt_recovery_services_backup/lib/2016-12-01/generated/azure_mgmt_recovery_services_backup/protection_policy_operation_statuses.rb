# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator.
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::RecoveryServicesBackup::Mgmt::V2016_12_01
  #
  # ProtectionPolicyOperationStatuses
  #
  class ProtectionPolicyOperationStatuses
    include MsRestAzure

    #
    # Creates and initializes a new instance of the ProtectionPolicyOperationStatuses class.
    # @param client service class for accessing basic functionality.
    #
    def initialize(client)
      @client = client
    end

    # @return [RecoveryServicesBackupClient] reference to the RecoveryServicesBackupClient
    attr_reader :client

    #
    # Provides the status of the asynchronous operations like backup, restore. The
    # status can be in progress, completed or failed. You can refer to the
    # Operation Status enum for all the possible states of an operation. Some
    # operations create jobs. This method returns the list of jobs associated with
    # operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy name whose operation's status needs
    # to be fetched.
    # @param operation_id [String] Operation ID which represents an operation whose
    # status needs to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [OperationStatus] operation results.
    #
    def get(vault_name, resource_group_name, policy_name, operation_id, custom_headers = nil)
      response = get_async(vault_name, resource_group_name, policy_name, operation_id, custom_headers).value!
      response.body unless response.nil?
    end

    #
    # Provides the status of the asynchronous operations like backup, restore. The
    # status can be in progress, completed or failed. You can refer to the
    # Operation Status enum for all the possible states of an operation. Some
    # operations create jobs. This method returns the list of jobs associated with
    # operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy name whose operation's status needs
    # to be fetched.
    # @param operation_id [String] Operation ID which represents an operation whose
    # status needs to be fetched.
    # @param custom_headers [Hash{String => String}] A hash of custom headers that
    # will be added to the HTTP request.
    #
    # @return [MsRestAzure::AzureOperationResponse] HTTP response information.
    #
    def get_with_http_info(vault_name, resource_group_name, policy_name, operation_id, custom_headers = nil)
      get_async(vault_name, resource_group_name, policy_name, operation_id, custom_headers).value!
    end

    #
    # Provides the status of the asynchronous operations like backup, restore. The
    # status can be in progress, completed or failed. You can refer to the
    # Operation Status enum for all the possible states of an operation. Some
    # operations create jobs. This method returns the list of jobs associated with
    # operation.
    #
    # @param vault_name [String] The name of the recovery services vault.
    # @param resource_group_name [String] The name of the resource group where the
    # recovery services vault is present.
    # @param policy_name [String] Backup policy name whose operation's status needs
    # to be fetched.
    # @param operation_id [String] Operation ID which represents an operation whose
    # status needs to be fetched.
    # @param [Hash{String => String}] A hash of custom headers that will be added
    # to the HTTP request.
    #
    # @return [Concurrent::Promise] Promise object which holds the HTTP response.
    #
    def get_async(vault_name, resource_group_name, policy_name, operation_id, custom_headers = nil)
      fail ArgumentError, '@client.api_version is nil' if @client.api_version.nil?
      fail ArgumentError, 'vault_name is nil' if vault_name.nil?
      fail ArgumentError, 'resource_group_name is nil' if resource_group_name.nil?
      fail ArgumentError, '@client.subscription_id is nil' if @client.subscription_id.nil?
      fail ArgumentError, 'policy_name is nil' if policy_name.nil?
      fail ArgumentError, 'operation_id is nil' if operation_id.nil?


      request_headers = {}

      # Set Headers
      request_headers['x-ms-client-request-id'] = SecureRandom.uuid
      request_headers['accept-language'] = @client.accept_language unless @client.accept_language.nil?
      path_template = 'Subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.RecoveryServices/vaults/{vaultName}/backupPolicies/{policyName}/operations/{operationId}'

      request_url = @base_url || @client.base_url

      options = {
          middlewares: [[MsRest::RetryPolicyMiddleware, times: 3, retry: 0.02], [:cookie_jar]],
          path_params: {'vaultName' => vault_name,'resourceGroupName' => resource_group_name,'subscriptionId' => @client.subscription_id,'policyName' => policy_name,'operationId' => operation_id},
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
            result_mapper = Azure::RecoveryServicesBackup::Mgmt::V2016_12_01::Models::OperationStatus.mapper()
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
