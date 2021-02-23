=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create or replace SpoofGuard profile
    # API will create or replace SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [SpoofGuardProfile]
    def create_or_update_spoof_guard_profile(spoofguard_profile_id, spoof_guard_profile, opts = {})
      data, _status_code, _headers = create_or_update_spoof_guard_profile_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts)
      data
    end

    # Create or replace SpoofGuard profile
    # API will create or replace SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(SpoofGuardProfile, Fixnum, Hash)>] SpoofGuardProfile data, response status code and response headers
    def create_or_update_spoof_guard_profile_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.create_or_update_spoof_guard_profile ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.create_or_update_spoof_guard_profile"
      end
      # verify the required parameter 'spoof_guard_profile' is set
      if @api_client.config.client_side_validation && spoof_guard_profile.nil?
        fail ArgumentError, "Missing the required parameter 'spoof_guard_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.create_or_update_spoof_guard_profile"
      end
      # resource path
      local_var_path = '/infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(spoof_guard_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SpoofGuardProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#create_or_update_spoof_guard_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or replace SpoofGuard profile
    # API will create or replace SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [SpoofGuardProfile]
    def create_or_update_spoof_guard_profile_0(spoofguard_profile_id, spoof_guard_profile, opts = {})
      data, _status_code, _headers = create_or_update_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts)
      data
    end

    # Create or replace SpoofGuard profile
    # API will create or replace SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(SpoofGuardProfile, Fixnum, Hash)>] SpoofGuardProfile data, response status code and response headers
    def create_or_update_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.create_or_update_spoof_guard_profile_0 ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.create_or_update_spoof_guard_profile_0"
      end
      # verify the required parameter 'spoof_guard_profile' is set
      if @api_client.config.client_side_validation && spoof_guard_profile.nil?
        fail ArgumentError, "Missing the required parameter 'spoof_guard_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.create_or_update_spoof_guard_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(spoof_guard_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'SpoofGuardProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#create_or_update_spoof_guard_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete SpoofGuard profile
    # API will delete SpoofGuard profile with the given id. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_spoof_guard_profile(spoofguard_profile_id, opts = {})
      delete_spoof_guard_profile_with_http_info(spoofguard_profile_id, opts)
      nil
    end

    # Delete SpoofGuard profile
    # API will delete SpoofGuard profile with the given id. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_spoof_guard_profile_with_http_info(spoofguard_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.delete_spoof_guard_profile ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.delete_spoof_guard_profile"
      end
      # resource path
      local_var_path = '/infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#delete_spoof_guard_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete SpoofGuard profile
    # API will delete SpoofGuard profile with the given id. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_spoof_guard_profile_0(spoofguard_profile_id, opts = {})
      delete_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, opts)
      nil
    end

    # Delete SpoofGuard profile
    # API will delete SpoofGuard profile with the given id. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.delete_spoof_guard_profile_0 ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.delete_spoof_guard_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

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
      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#delete_spoof_guard_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get SpoofGuard profile
    # API will return details of the SpoofGuard profile with given id. If the profile does not exist, it will return 404. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @return [SpoofGuardProfile]
    def get_spoof_guard_profile(spoofguard_profile_id, opts = {})
      data, _status_code, _headers = get_spoof_guard_profile_with_http_info(spoofguard_profile_id, opts)
      data
    end

    # Get SpoofGuard profile
    # API will return details of the SpoofGuard profile with given id. If the profile does not exist, it will return 404. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpoofGuardProfile, Fixnum, Hash)>] SpoofGuardProfile data, response status code and response headers
    def get_spoof_guard_profile_with_http_info(spoofguard_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.get_spoof_guard_profile ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.get_spoof_guard_profile"
      end
      # resource path
      local_var_path = '/infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

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
        :return_type => 'SpoofGuardProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#get_spoof_guard_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get SpoofGuard profile
    # API will return details of the SpoofGuard profile with given id. If the profile does not exist, it will return 404. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @return [SpoofGuardProfile]
    def get_spoof_guard_profile_0(spoofguard_profile_id, opts = {})
      data, _status_code, _headers = get_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, opts)
      data
    end

    # Get SpoofGuard profile
    # API will return details of the SpoofGuard profile with given id. If the profile does not exist, it will return 404. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SpoofGuardProfile, Fixnum, Hash)>] SpoofGuardProfile data, response status code and response headers
    def get_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.get_spoof_guard_profile_0 ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.get_spoof_guard_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

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
        :return_type => 'SpoofGuardProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#get_spoof_guard_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List SpoofGuard profiles
    # API will list all SpoofGuard profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [SpoofGuardProfileListResult]
    def list_spoof_guard_profiles(opts = {})
      data, _status_code, _headers = list_spoof_guard_profiles_with_http_info(opts)
      data
    end

    # List SpoofGuard profiles
    # API will list all SpoofGuard profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(SpoofGuardProfileListResult, Fixnum, Hash)>] SpoofGuardProfileListResult data, response status code and response headers
    def list_spoof_guard_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.list_spoof_guard_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.list_spoof_guard_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.list_spoof_guard_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/spoofguard-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
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
        :return_type => 'SpoofGuardProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#list_spoof_guard_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List SpoofGuard profiles
    # API will list all SpoofGuard profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [SpoofGuardProfileListResult]
    def list_spoof_guard_profiles_0(opts = {})
      data, _status_code, _headers = list_spoof_guard_profiles_0_with_http_info(opts)
      data
    end

    # List SpoofGuard profiles
    # API will list all SpoofGuard profiles. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(SpoofGuardProfileListResult, Fixnum, Hash)>] SpoofGuardProfileListResult data, response status code and response headers
    def list_spoof_guard_profiles_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.list_spoof_guard_profiles_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.list_spoof_guard_profiles_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.list_spoof_guard_profiles_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/spoofguard-profiles'

      # query parameters
      query_params = {}
      query_params[:'cursor'] = opts[:'cursor'] if !opts[:'cursor'].nil?
      query_params[:'include_mark_for_delete_objects'] = opts[:'include_mark_for_delete_objects'] if !opts[:'include_mark_for_delete_objects'].nil?
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
        :return_type => 'SpoofGuardProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#list_spoof_guard_profiles_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Patch SpoofGuard profile
    # Create a new SpoofGuard profile if the SpoofGuard profile with the given id does not exist. Otherwise, patch with the existing SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_spoof_guard_profile(spoofguard_profile_id, spoof_guard_profile, opts = {})
      patch_spoof_guard_profile_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts)
      nil
    end

    # Patch SpoofGuard profile
    # Create a new SpoofGuard profile if the SpoofGuard profile with the given id does not exist. Otherwise, patch with the existing SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_spoof_guard_profile_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.patch_spoof_guard_profile ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.patch_spoof_guard_profile"
      end
      # verify the required parameter 'spoof_guard_profile' is set
      if @api_client.config.client_side_validation && spoof_guard_profile.nil?
        fail ArgumentError, "Missing the required parameter 'spoof_guard_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.patch_spoof_guard_profile"
      end
      # resource path
      local_var_path = '/infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(spoof_guard_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#patch_spoof_guard_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Patch SpoofGuard profile
    # Create a new SpoofGuard profile if the SpoofGuard profile with the given id does not exist. Otherwise, patch with the existing SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_spoof_guard_profile_0(spoofguard_profile_id, spoof_guard_profile, opts = {})
      patch_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts)
      nil
    end

    # Patch SpoofGuard profile
    # Create a new SpoofGuard profile if the SpoofGuard profile with the given id does not exist. Otherwise, patch with the existing SpoofGuard profile. 
    # @param spoofguard_profile_id SpoofGuard profile id
    # @param spoof_guard_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_spoof_guard_profile_0_with_http_info(spoofguard_profile_id, spoof_guard_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.patch_spoof_guard_profile_0 ...'
      end
      # verify the required parameter 'spoofguard_profile_id' is set
      if @api_client.config.client_side_validation && spoofguard_profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'spoofguard_profile_id' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.patch_spoof_guard_profile_0"
      end
      # verify the required parameter 'spoof_guard_profile' is set
      if @api_client.config.client_side_validation && spoof_guard_profile.nil?
        fail ArgumentError, "Missing the required parameter 'spoof_guard_profile' when calling PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi.patch_spoof_guard_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/spoofguard-profiles/{spoofguard-profile-id}'.sub('{' + 'spoofguard-profile-id' + '}', spoofguard_profile_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'override'] = opts[:'override'] if !opts[:'override'].nil?

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(spoof_guard_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingConnectivitySegmentsSegmentProfilesSpoofguardProfilesApi#patch_spoof_guard_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
