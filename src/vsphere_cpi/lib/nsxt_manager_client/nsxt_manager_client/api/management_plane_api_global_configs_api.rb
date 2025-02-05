=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiGlobalConfigsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get global configs for a config type
    # Returns global configurations that belong to the config type 
    # @param config_type 
    # @param [Hash] opts the optional parameters
    # @return [GlobalConfigs]
    def get_global_configs(config_type, opts = {})
      data, _status_code, _headers = get_global_configs_with_http_info(config_type, opts)
      data
    end

    # Get global configs for a config type
    # Returns global configurations that belong to the config type 
    # @param config_type 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GlobalConfigs, Fixnum, Hash)>] GlobalConfigs data, response status code and response headers
    def get_global_configs_with_http_info(config_type, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGlobalConfigsApi.get_global_configs ...'
      end
      # verify the required parameter 'config_type' is set
      if @api_client.config.client_side_validation && config_type.nil?
        fail ArgumentError, "Missing the required parameter 'config_type' when calling ManagementPlaneApiGlobalConfigsApi.get_global_configs"
      end
      # resource path
      local_var_path = '/global-configs/{config-type}'.sub('{' + 'config-type' + '}', config_type.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GlobalConfigs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGlobalConfigsApi#get_global_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List global configurations of a NSX domain
    # Returns global configurations of a NSX domain grouped by the config types. These global configurations are valid across NSX domain for their respective types unless they are overridden by a more granular configurations. 
    # @param [Hash] opts the optional parameters
    # @return [GlobalConfigsListResult]
    def list_global_configs(opts = {})
      data, _status_code, _headers = list_global_configs_with_http_info(opts)
      data
    end

    # List global configurations of a NSX domain
    # Returns global configurations of a NSX domain grouped by the config types. These global configurations are valid across NSX domain for their respective types unless they are overridden by a more granular configurations. 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GlobalConfigsListResult, Fixnum, Hash)>] GlobalConfigsListResult data, response status code and response headers
    def list_global_configs_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGlobalConfigsApi.list_global_configs ...'
      end
      # resource path
      local_var_path = '/global-configs'

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GlobalConfigsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGlobalConfigsApi#list_global_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Resyncs global configurations of a config-type
    # It is similar to update global configurations but this request would trigger update even if the configs are unmodified. However, the realization of the new configurations is config-type specific. Refer to config-type specific documentation for details about the configuration push state. 
    # @param config_type 
    # @param global_configs 
    # @param [Hash] opts the optional parameters
    # @return [GlobalConfigs]
    def resync_global_configs_resync_config(config_type, global_configs, opts = {})
      data, _status_code, _headers = resync_global_configs_resync_config_with_http_info(config_type, global_configs, opts)
      data
    end

    # Resyncs global configurations of a config-type
    # It is similar to update global configurations but this request would trigger update even if the configs are unmodified. However, the realization of the new configurations is config-type specific. Refer to config-type specific documentation for details about the configuration push state. 
    # @param config_type 
    # @param global_configs 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GlobalConfigs, Fixnum, Hash)>] GlobalConfigs data, response status code and response headers
    def resync_global_configs_resync_config_with_http_info(config_type, global_configs, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGlobalConfigsApi.resync_global_configs_resync_config ...'
      end
      # verify the required parameter 'config_type' is set
      if @api_client.config.client_side_validation && config_type.nil?
        fail ArgumentError, "Missing the required parameter 'config_type' when calling ManagementPlaneApiGlobalConfigsApi.resync_global_configs_resync_config"
      end
      # verify the required parameter 'global_configs' is set
      if @api_client.config.client_side_validation && global_configs.nil?
        fail ArgumentError, "Missing the required parameter 'global_configs' when calling ManagementPlaneApiGlobalConfigsApi.resync_global_configs_resync_config"
      end
      # resource path
      local_var_path = '/global-configs/{config-type}?action=resync_config'.sub('{' + 'config-type' + '}', config_type.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(global_configs)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GlobalConfigs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGlobalConfigsApi#resync_global_configs_resync_config\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update global configurations of a config type
    # Updates global configurations that belong to a config type. The request must include the updated values along with the unmodified values. The values that are updated(different) would trigger update to config-type specific state. However, the realization of the new configurations is config-type specific. Refer to config-type specific documentation for details about the config- uration push state. Policy api will overwrite the fipsGlobalConfig set using MP api. Always use https://<policyIp>/policy/api/v1/infra/global-config to update fips config- uration. 
    # @param config_type 
    # @param global_configs 
    # @param [Hash] opts the optional parameters
    # @return [GlobalConfigs]
    def update_global_configs(config_type, global_configs, opts = {})
      data, _status_code, _headers = update_global_configs_with_http_info(config_type, global_configs, opts)
      data
    end

    # Update global configurations of a config type
    # Updates global configurations that belong to a config type. The request must include the updated values along with the unmodified values. The values that are updated(different) would trigger update to config-type specific state. However, the realization of the new configurations is config-type specific. Refer to config-type specific documentation for details about the config- uration push state. Policy api will overwrite the fipsGlobalConfig set using MP api. Always use https://&lt;policyIp&gt;/policy/api/v1/infra/global-config to update fips config- uration. 
    # @param config_type 
    # @param global_configs 
    # @param [Hash] opts the optional parameters
    # @return [Array<(GlobalConfigs, Fixnum, Hash)>] GlobalConfigs data, response status code and response headers
    def update_global_configs_with_http_info(config_type, global_configs, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiGlobalConfigsApi.update_global_configs ...'
      end
      # verify the required parameter 'config_type' is set
      if @api_client.config.client_side_validation && config_type.nil?
        fail ArgumentError, "Missing the required parameter 'config_type' when calling ManagementPlaneApiGlobalConfigsApi.update_global_configs"
      end
      # verify the required parameter 'global_configs' is set
      if @api_client.config.client_side_validation && global_configs.nil?
        fail ArgumentError, "Missing the required parameter 'global_configs' when calling ManagementPlaneApiGlobalConfigsApi.update_global_configs"
      end
      # resource path
      local_var_path = '/global-configs/{config-type}'.sub('{' + 'config-type' + '}', config_type.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(global_configs)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'GlobalConfigs')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiGlobalConfigsApi#update_global_configs\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
