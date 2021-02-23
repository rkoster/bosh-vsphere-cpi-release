=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class PolicySecuritySecurityProfilesDNSSecurityProfilesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Delete DNS security profile
    # Delete DNS security profile
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_dns_security_profile(profile_id, opts = {})
      delete_dns_security_profile_with_http_info(profile_id, opts)
      nil
    end

    # Delete DNS security profile
    # Delete DNS security profile
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_dns_security_profile_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.delete_dns_security_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.delete_dns_security_profile"
      end
      # resource path
      local_var_path = '/infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#delete_dns_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Delete DNS security profile
    # Delete DNS security profile
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def delete_dns_security_profile_0(profile_id, opts = {})
      delete_dns_security_profile_0_with_http_info(profile_id, opts)
      nil
    end

    # Delete DNS security profile
    # Delete DNS security profile
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def delete_dns_security_profile_0_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.delete_dns_security_profile_0 ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.delete_dns_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#delete_dns_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all DNS security profiles
    # List all DNS security profiles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [DnsSecurityProfileListResult]
    def list_dns_security_profiles(opts = {})
      data, _status_code, _headers = list_dns_security_profiles_with_http_info(opts)
      data
    end

    # List all DNS security profiles
    # List all DNS security profiles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(DnsSecurityProfileListResult, Fixnum, Hash)>] DnsSecurityProfileListResult data, response status code and response headers
    def list_dns_security_profiles_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.list_dns_security_profiles ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.list_dns_security_profiles, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.list_dns_security_profiles, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/global-infra/dns-security-profiles'

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
        :return_type => 'DnsSecurityProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#list_dns_security_profiles\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List all DNS security profiles
    # List all DNS security profiles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results (default to false)
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer) (default to 1000)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [DnsSecurityProfileListResult]
    def list_dns_security_profiles_0(opts = {})
      data, _status_code, _headers = list_dns_security_profiles_0_with_http_info(opts)
      data
    end

    # List all DNS security profiles
    # List all DNS security profiles
    # @param [Hash] opts the optional parameters
    # @option opts [String] :cursor Opaque cursor to be used for getting next page of records (supplied by current result page)
    # @option opts [BOOLEAN] :include_mark_for_delete_objects Include objects that are marked for deletion in results
    # @option opts [String] :included_fields Comma separated list of fields that should be included in query result
    # @option opts [Integer] :page_size Maximum number of results to return in this page (server may return fewer)
    # @option opts [BOOLEAN] :sort_ascending 
    # @option opts [String] :sort_by Field by which records are sorted
    # @return [Array<(DnsSecurityProfileListResult, Fixnum, Hash)>] DnsSecurityProfileListResult data, response status code and response headers
    def list_dns_security_profiles_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.list_dns_security_profiles_0 ...'
      end
      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] > 1000
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.list_dns_security_profiles_0, must be smaller than or equal to 1000.'
      end

      if @api_client.config.client_side_validation && !opts[:'page_size'].nil? && opts[:'page_size'] < 0
        fail ArgumentError, 'invalid value for "opts[:"page_size"]" when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.list_dns_security_profiles_0, must be greater than or equal to 0.'
      end

      # resource path
      local_var_path = '/infra/dns-security-profiles'

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
        :return_type => 'DnsSecurityProfileListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#list_dns_security_profiles_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_dns_security_profile(profile_id, dns_security_profile, opts = {})
      patch_dns_security_profile_with_http_info(profile_id, dns_security_profile, opts)
      nil
    end

    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_dns_security_profile_with_http_info(profile_id, dns_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.patch_dns_security_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.patch_dns_security_profile"
      end
      # verify the required parameter 'dns_security_profile' is set
      if @api_client.config.client_side_validation && dns_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.patch_dns_security_profile"
      end
      # resource path
      local_var_path = '/infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#patch_dns_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [nil]
    def patch_dns_security_profile_0(profile_id, dns_security_profile, opts = {})
      patch_dns_security_profile_0_with_http_info(profile_id, dns_security_profile, opts)
      nil
    end

    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(nil, Fixnum, Hash)>] nil, response status code and response headers
    def patch_dns_security_profile_0_with_http_info(profile_id, dns_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.patch_dns_security_profile_0 ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.patch_dns_security_profile_0"
      end
      # verify the required parameter 'dns_security_profile' is set
      if @api_client.config.client_side_validation && dns_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.patch_dns_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#patch_dns_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read the DNS Forwarder for the given tier-0 instance
    # Read the DNS Forwarder for the given tier-0 instance
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @return [DnsSecurityProfile]
    def read_dns_security_profile(profile_id, opts = {})
      data, _status_code, _headers = read_dns_security_profile_with_http_info(profile_id, opts)
      data
    end

    # Read the DNS Forwarder for the given tier-0 instance
    # Read the DNS Forwarder for the given tier-0 instance
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsSecurityProfile, Fixnum, Hash)>] DnsSecurityProfile data, response status code and response headers
    def read_dns_security_profile_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.read_dns_security_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.read_dns_security_profile"
      end
      # resource path
      local_var_path = '/infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
        :return_type => 'DnsSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#read_dns_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read the DNS Forwarder for the given tier-0 instance
    # Read the DNS Forwarder for the given tier-0 instance
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @return [DnsSecurityProfile]
    def read_dns_security_profile_0(profile_id, opts = {})
      data, _status_code, _headers = read_dns_security_profile_0_with_http_info(profile_id, opts)
      data
    end

    # Read the DNS Forwarder for the given tier-0 instance
    # Read the DNS Forwarder for the given tier-0 instance
    # @param profile_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DnsSecurityProfile, Fixnum, Hash)>] DnsSecurityProfile data, response status code and response headers
    def read_dns_security_profile_0_with_http_info(profile_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.read_dns_security_profile_0 ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.read_dns_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
        :return_type => 'DnsSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#read_dns_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [DnsSecurityProfile]
    def update_dns_security_profile(profile_id, dns_security_profile, opts = {})
      data, _status_code, _headers = update_dns_security_profile_with_http_info(profile_id, dns_security_profile, opts)
      data
    end

    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(DnsSecurityProfile, Fixnum, Hash)>] DnsSecurityProfile data, response status code and response headers
    def update_dns_security_profile_with_http_info(profile_id, dns_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.update_dns_security_profile ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.update_dns_security_profile"
      end
      # verify the required parameter 'dns_security_profile' is set
      if @api_client.config.client_side_validation && dns_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.update_dns_security_profile"
      end
      # resource path
      local_var_path = '/infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DnsSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#update_dns_security_profile\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object (default to false)
    # @return [DnsSecurityProfile]
    def update_dns_security_profile_0(profile_id, dns_security_profile, opts = {})
      data, _status_code, _headers = update_dns_security_profile_0_with_http_info(profile_id, dns_security_profile, opts)
      data
    end

    # Create or update DNS security profile
    # Create or update DNS security profile
    # @param profile_id 
    # @param dns_security_profile 
    # @param [Hash] opts the optional parameters
    # @option opts [BOOLEAN] :override Locally override the global object
    # @return [Array<(DnsSecurityProfile, Fixnum, Hash)>] DnsSecurityProfile data, response status code and response headers
    def update_dns_security_profile_0_with_http_info(profile_id, dns_security_profile, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecuritySecurityProfilesDNSSecurityProfilesApi.update_dns_security_profile_0 ...'
      end
      # verify the required parameter 'profile_id' is set
      if @api_client.config.client_side_validation && profile_id.nil?
        fail ArgumentError, "Missing the required parameter 'profile_id' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.update_dns_security_profile_0"
      end
      # verify the required parameter 'dns_security_profile' is set
      if @api_client.config.client_side_validation && dns_security_profile.nil?
        fail ArgumentError, "Missing the required parameter 'dns_security_profile' when calling PolicySecuritySecurityProfilesDNSSecurityProfilesApi.update_dns_security_profile_0"
      end
      # resource path
      local_var_path = '/global-infra/dns-security-profiles/{profile-id}'.sub('{' + 'profile-id' + '}', profile_id.to_s)

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
      post_body = @api_client.object_to_http_body(dns_security_profile)
      auth_names = ['BasicAuth']
      data, status_code, headers = @api_client.call_api(:PUT, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'DnsSecurityProfile')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecuritySecurityProfilesDNSSecurityProfilesApi#update_dns_security_profile_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
