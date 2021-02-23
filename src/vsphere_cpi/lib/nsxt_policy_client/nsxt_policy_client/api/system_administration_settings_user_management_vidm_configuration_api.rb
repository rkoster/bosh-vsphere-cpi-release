=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class SystemAdministrationSettingsUserManagementVidmConfigurationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get all the User Groups where vIDM display name matches the search key case insensitively. The search key is checked to be a substring of display name. This is a non paginated API.
    # Get all the User Groups where vIDM display name matches the search key case insensitively. The search key is checked to be a substring of display name. This is a non paginated API.
    # @param search_string Search string to search for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [VidmInfoListResult]
    def get_group_vidm_search_result(search_string, opts = {})
      data, _status_code, _headers = get_group_vidm_search_result_with_http_info(search_string, opts)
      data
    end

    # Get all the User Groups where vIDM display name matches the search key case insensitively. The search key is checked to be a substring of display name. This is a non paginated API.
    # Get all the User Groups where vIDM display name matches the search key case insensitively. The search key is checked to be a substring of display name. This is a non paginated API.
    # @param search_string Search string to search for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(VidmInfoListResult, Fixnum, Hash)>] VidmInfoListResult data, response status code and response headers
    def get_group_vidm_search_result_with_http_info(search_string, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_group_vidm_search_result ...'
      end
      # verify the required parameter 'search_string' is set
      if @api_client.config.client_side_validation && search_string.nil?
        fail ArgumentError, "Missing the required parameter 'search_string' when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_group_vidm_search_result"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_group_vidm_search_result, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_group_vidm_search_result, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/aaa/vidm/groups'

      # query parameters
      query_params = {}
      query_params[:'search_string'] = search_string
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
        :return_type => 'VidmInfoListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementVidmConfigurationApi#get_group_vidm_search_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all the users from vIDM whose userName, givenName or familyName matches the search key case insensitively. The search key is checked to be a substring of name or given name or family name. This is a non paginated API.
    # Get all the users from vIDM whose userName, givenName or familyName matches the search key case insensitively. The search key is checked to be a substring of name or given name or family name. This is a non paginated API.
    # @param search_string Search string to search for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [VidmInfoListResult]
    def get_user_vidm_search_result(search_string, opts = {})
      data, _status_code, _headers = get_user_vidm_search_result_with_http_info(search_string, opts)
      data
    end

    # Get all the users from vIDM whose userName, givenName or familyName matches the search key case insensitively. The search key is checked to be a substring of name or given name or family name. This is a non paginated API.
    # Get all the users from vIDM whose userName, givenName or familyName matches the search key case insensitively. The search key is checked to be a substring of name or given name or family name. This is a non paginated API.
    # @param search_string Search string to search for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(VidmInfoListResult, Fixnum, Hash)>] VidmInfoListResult data, response status code and response headers
    def get_user_vidm_search_result_with_http_info(search_string, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_user_vidm_search_result ...'
      end
      # verify the required parameter 'search_string' is set
      if @api_client.config.client_side_validation && search_string.nil?
        fail ArgumentError, "Missing the required parameter 'search_string' when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_user_vidm_search_result"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_user_vidm_search_result, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_user_vidm_search_result, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/aaa/vidm/users'

      # query parameters
      query_params = {}
      query_params[:'search_string'] = search_string
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
        :return_type => 'VidmInfoListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementVidmConfigurationApi#get_user_vidm_search_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get all the users and groups from vIDM matching the search key case insensitively. The search key is checked to be a substring of name or given name or family name of user and display name of group. This is a non paginated API.
    # Get all the users and groups from vIDM matching the search key case insensitively. The search key is checked to be a substring of name or given name or family name of user and display name of group. This is a non paginated API.
    # @param search_string Search string to search for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [VidmInfoListResult]
    def get_vidm_search_result(search_string, opts = {})
      data, _status_code, _headers = get_vidm_search_result_with_http_info(search_string, opts)
      data
    end

    # Get all the users and groups from vIDM matching the search key case insensitively. The search key is checked to be a substring of name or given name or family name of user and display name of group. This is a non paginated API.
    # Get all the users and groups from vIDM matching the search key case insensitively. The search key is checked to be a substring of name or given name or family name of user and display name of group. This is a non paginated API.
    # @param search_string Search string to search for. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(VidmInfoListResult, Fixnum, Hash)>] VidmInfoListResult data, response status code and response headers
    def get_vidm_search_result_with_http_info(search_string, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_vidm_search_result ...'
      end
      # verify the required parameter 'search_string' is set
      if @api_client.config.client_side_validation && search_string.nil?
        fail ArgumentError, "Missing the required parameter 'search_string' when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_vidm_search_result"
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_vidm_search_result, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling SystemAdministrationSettingsUserManagementVidmConfigurationApi.get_vidm_search_result, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/aaa/vidm/search'

      # query parameters
      query_params = {}
      query_params[:'search_string'] = search_string
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
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'VidmInfoListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: SystemAdministrationSettingsUserManagementVidmConfigurationApi#get_vidm_search_result\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
