=begin
#NSX-T Manager API

#VMware NSX-T Manager REST API

OpenAPI spec version: 2.5.1.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXT
  class ManagementPlaneApiIdentityFirewallConfigurationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get IDFW compute collection.
    # Get enable/disable status of individual compute collections for IDFW. 
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [IdfwEnabledComputeCollection]
    def get_enabled_compute_collection(cc_ext_id, opts = {})
      data, _status_code, _headers = get_enabled_compute_collection_with_http_info(cc_ext_id, opts)
      data
    end

    # Get IDFW compute collection.
    # Get enable/disable status of individual compute collections for IDFW. 
    # @param cc_ext_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdfwEnabledComputeCollection, Fixnum, Hash)>] IdfwEnabledComputeCollection data, response status code and response headers
    def get_enabled_compute_collection_with_http_info(cc_ext_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.get_enabled_compute_collection ...'
      end
      # verify the required parameter 'cc_ext_id' is set
      if @api_client.config.client_side_validation && cc_ext_id.nil?
        fail ArgumentError, "Missing the required parameter 'cc_ext_id' when calling ManagementPlaneApiIdentityFirewallConfigurationApi.get_enabled_compute_collection"
      end
      # resource path
      local_var_path = '/idfw/idfw-compute-collections/{cc-ext-id}'.sub('{' + 'cc-ext-id' + '}', cc_ext_id.to_s)

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
        :return_type => 'IdfwEnabledComputeCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#get_enabled_compute_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Identity Firewall master switch enabled/disabled
    # Fetches IDFW master switch setting to check whether master switch is enabled or disabled 
    # @param [Hash] opts the optional parameters
    # @return [IdfwMasterSwitchSetting]
    def get_master_switch_setting(opts = {})
      data, _status_code, _headers = get_master_switch_setting_with_http_info(opts)
      data
    end

    # Get Identity Firewall master switch enabled/disabled
    # Fetches IDFW master switch setting to check whether master switch is enabled or disabled 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdfwMasterSwitchSetting, Fixnum, Hash)>] IdfwMasterSwitchSetting data, response status code and response headers
    def get_master_switch_setting_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.get_master_switch_setting ...'
      end
      # resource path
      local_var_path = '/idfw/master-switch-setting'

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
        :return_type => 'IdfwMasterSwitchSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#get_master_switch_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get Standalone hosts switch enabled/disabled
    # Fetches IDFW standalone hosts switch setting to check whether standalone hosts is enabled or disabled 
    # @param [Hash] opts the optional parameters
    # @return [IdfwStandaloneHostsSwitchSetting]
    def get_standalone_hosts_switch_setting(opts = {})
      data, _status_code, _headers = get_standalone_hosts_switch_setting_with_http_info(opts)
      data
    end

    # Get Standalone hosts switch enabled/disabled
    # Fetches IDFW standalone hosts switch setting to check whether standalone hosts is enabled or disabled 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdfwStandaloneHostsSwitchSetting, Fixnum, Hash)>] IdfwStandaloneHostsSwitchSetting data, response status code and response headers
    def get_standalone_hosts_switch_setting_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.get_standalone_hosts_switch_setting ...'
      end
      # resource path
      local_var_path = '/idfw/standalone-host-switch-setting'

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
        :return_type => 'IdfwStandaloneHostsSwitchSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#get_standalone_hosts_switch_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all Identity firewall compute collections
    # List all Identity firewall compute collections. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [IdfwEnabledComputeCollectionListResult]
    def list_enabled_compute_collections(opts = {})
      data, _status_code, _headers = list_enabled_compute_collections_with_http_info(opts)
      data
    end

    # List all Identity firewall compute collections
    # List all Identity firewall compute collections. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(IdfwEnabledComputeCollectionListResult, Fixnum, Hash)>] IdfwEnabledComputeCollectionListResult data, response status code and response headers
    def list_enabled_compute_collections_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.list_enabled_compute_collections ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiIdentityFirewallConfigurationApi.list_enabled_compute_collections, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling ManagementPlaneApiIdentityFirewallConfigurationApi.list_enabled_compute_collections, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/idfw/idfw-compute-collections'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'included_fields'] = opts[:'included_fields'] if !opts[:'included_fields'].nil?
      query_params[:'page_size'] = opts[:'page_size'] if !opts[:'page_size'].nil?
      query_params[:'sort_ascending'] = opts[:'sort_ascending'] if !opts[:'sort_ascending'].nil?
      query_params[:'sort_by'] = opts[:'sort_by'] if !opts[:'sort_by'].nil?

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
        :return_type => 'IdfwEnabledComputeCollectionListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#list_enabled_compute_collections\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update IDFW compute collection
    # Enable/disable individual compute collections for IDFW. 
    # @param cc_ext_id 
    # @param idfw_enabled_compute_collection 
    # @param [Hash] opts the optional parameters
    # @return [IdfwEnabledComputeCollection]
    def update_enabled_compute_collection(cc_ext_id, idfw_enabled_compute_collection, opts = {})
      data, _status_code, _headers = update_enabled_compute_collection_with_http_info(cc_ext_id, idfw_enabled_compute_collection, opts)
      data
    end

    # Update IDFW compute collection
    # Enable/disable individual compute collections for IDFW. 
    # @param cc_ext_id 
    # @param idfw_enabled_compute_collection 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdfwEnabledComputeCollection, Fixnum, Hash)>] IdfwEnabledComputeCollection data, response status code and response headers
    def update_enabled_compute_collection_with_http_info(cc_ext_id, idfw_enabled_compute_collection, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.update_enabled_compute_collection ...'
      end
      # verify the required parameter 'cc_ext_id' is set
      if @api_client.config.client_side_validation && cc_ext_id.nil?
        fail ArgumentError, "Missing the required parameter 'cc_ext_id' when calling ManagementPlaneApiIdentityFirewallConfigurationApi.update_enabled_compute_collection"
      end
      # verify the required parameter 'idfw_enabled_compute_collection' is set
      if @api_client.config.client_side_validation && idfw_enabled_compute_collection.nil?
        fail ArgumentError, "Missing the required parameter 'idfw_enabled_compute_collection' when calling ManagementPlaneApiIdentityFirewallConfigurationApi.update_enabled_compute_collection"
      end
      # resource path
      local_var_path = '/idfw/idfw-compute-collections/{cc-ext-id}'.sub('{' + 'cc-ext-id' + '}', cc_ext_id.to_s)

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
      post_body = @api_client.object_to_http_body(idfw_enabled_compute_collection)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IdfwEnabledComputeCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#update_enabled_compute_collection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update IDFW master switch setting enabled/disabled
    # Update Identity Firewall master switch setting (true=enabled / false=disabled). Identity Firewall master switch setting enables or disables Identity Firewall feature across the system.  It affects compute collections, hypervisor and virtual machines.  This operation is expensive and also has big impact and implication on system perforamce. 
    # @param idfw_master_switch_setting 
    # @param [Hash] opts the optional parameters
    # @return [IdfwMasterSwitchSetting]
    def update_master_switch_setting(idfw_master_switch_setting, opts = {})
      data, _status_code, _headers = update_master_switch_setting_with_http_info(idfw_master_switch_setting, opts)
      data
    end

    # Update IDFW master switch setting enabled/disabled
    # Update Identity Firewall master switch setting (true&#x3D;enabled / false&#x3D;disabled). Identity Firewall master switch setting enables or disables Identity Firewall feature across the system.  It affects compute collections, hypervisor and virtual machines.  This operation is expensive and also has big impact and implication on system perforamce. 
    # @param idfw_master_switch_setting 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdfwMasterSwitchSetting, Fixnum, Hash)>] IdfwMasterSwitchSetting data, response status code and response headers
    def update_master_switch_setting_with_http_info(idfw_master_switch_setting, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.update_master_switch_setting ...'
      end
      # verify the required parameter 'idfw_master_switch_setting' is set
      if @api_client.config.client_side_validation && idfw_master_switch_setting.nil?
        fail ArgumentError, "Missing the required parameter 'idfw_master_switch_setting' when calling ManagementPlaneApiIdentityFirewallConfigurationApi.update_master_switch_setting"
      end
      # resource path
      local_var_path = '/idfw/master-switch-setting'

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
      post_body = @api_client.object_to_http_body(idfw_master_switch_setting)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IdfwMasterSwitchSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#update_master_switch_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update IDFW master switch setting enabled/disabled
    # Update Identity Firewall standalone hosts switch setting (true=enabled / false=disabled). 
    # @param idfw_standalone_hosts_switch_setting 
    # @param [Hash] opts the optional parameters
    # @return [IdfwStandaloneHostsSwitchSetting]
    def update_standalone_hosts_switch_setting(idfw_standalone_hosts_switch_setting, opts = {})
      data, _status_code, _headers = update_standalone_hosts_switch_setting_with_http_info(idfw_standalone_hosts_switch_setting, opts)
      data
    end

    # Update IDFW master switch setting enabled/disabled
    # Update Identity Firewall standalone hosts switch setting (true&#x3D;enabled / false&#x3D;disabled). 
    # @param idfw_standalone_hosts_switch_setting 
    # @param [Hash] opts the optional parameters
    # @return [Array<(IdfwStandaloneHostsSwitchSetting, Fixnum, Hash)>] IdfwStandaloneHostsSwitchSetting data, response status code and response headers
    def update_standalone_hosts_switch_setting_with_http_info(idfw_standalone_hosts_switch_setting, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementPlaneApiIdentityFirewallConfigurationApi.update_standalone_hosts_switch_setting ...'
      end
      # verify the required parameter 'idfw_standalone_hosts_switch_setting' is set
      if @api_client.config.client_side_validation && idfw_standalone_hosts_switch_setting.nil?
        fail ArgumentError, "Missing the required parameter 'idfw_standalone_hosts_switch_setting' when calling ManagementPlaneApiIdentityFirewallConfigurationApi.update_standalone_hosts_switch_setting"
      end
      # resource path
      local_var_path = '/idfw/standalone-host-switch-setting'

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
      post_body = @api_client.object_to_http_body(idfw_standalone_hosts_switch_setting)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'IdfwStandaloneHostsSwitchSetting')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementPlaneApiIdentityFirewallConfigurationApi#update_standalone_hosts_switch_setting\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
