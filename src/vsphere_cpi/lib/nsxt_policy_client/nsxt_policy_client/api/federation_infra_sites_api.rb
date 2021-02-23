=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class FederationInfraSitesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get site offboarding status.
    # Get site offboarding status.
    # @param [Hash] opts the optional parameters
    # @return [SiteOffBoardingState]
    def get_site_offboarding_status(opts = {})
      data, _status_code, _headers = get_site_offboarding_status_with_http_info(opts)
      data
    end

    # Get site offboarding status.
    # Get site offboarding status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SiteOffBoardingState, Fixnum, Hash)>] SiteOffBoardingState data, response status code and response headers
    def get_site_offboarding_status_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationInfraSitesApi.get_site_offboarding_status ...'
      end
      # resource path
      local_var_path = '/global-infra/site/offboarding-status'

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
        :return_type => 'SiteOffBoardingState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationInfraSitesApi#get_site_offboarding_status\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get site offboarding status.
    # Get site offboarding status.
    # @param [Hash] opts the optional parameters
    # @return [SiteOffBoardingState]
    def get_site_offboarding_status_0(opts = {})
      data, _status_code, _headers = get_site_offboarding_status_0_with_http_info(opts)
      data
    end

    # Get site offboarding status.
    # Get site offboarding status.
    # @param [Hash] opts the optional parameters
    # @return [Array<(SiteOffBoardingState, Fixnum, Hash)>] SiteOffBoardingState data, response status code and response headers
    def get_site_offboarding_status_0_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationInfraSitesApi.get_site_offboarding_status_0 ...'
      end
      # resource path
      local_var_path = '/infra/site/offboarding-status'

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
        :return_type => 'SiteOffBoardingState')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationInfraSitesApi#get_site_offboarding_status_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get span for an entity with specified path
    # Get span for an entity with specified path.
    # @param intent_path String Path of the intent object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :site_path Policy Path of the site
    # @return [Span]
    def get_span(intent_path, opts = {})
      data, _status_code, _headers = get_span_with_http_info(intent_path, opts)
      data
    end

    # Get span for an entity with specified path
    # Get span for an entity with specified path.
    # @param intent_path String Path of the intent object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :site_path Policy Path of the site
    # @return [Array<(Span, Fixnum, Hash)>] Span data, response status code and response headers
    def get_span_with_http_info(intent_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationInfraSitesApi.get_span ...'
      end
      # verify the required parameter 'intent_path' is set
      if @api_client.config.client_side_validation && intent_path.nil?
        fail ArgumentError, "Missing the required parameter 'intent_path' when calling FederationInfraSitesApi.get_span"
      end
      # resource path
      local_var_path = '/global-infra/span'

      # query parameters
      query_params = {}
      query_params[:'intent_path'] = intent_path
      query_params[:'site_path'] = opts[:'site_path'] if !opts[:'site_path'].nil?

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
        :return_type => 'Span')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationInfraSitesApi#get_span\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get span for an entity with specified path
    # Get span for an entity with specified path.
    # @param intent_path String Path of the intent object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :site_path Policy Path of the site
    # @return [Span]
    def get_span_0(intent_path, opts = {})
      data, _status_code, _headers = get_span_0_with_http_info(intent_path, opts)
      data
    end

    # Get span for an entity with specified path
    # Get span for an entity with specified path.
    # @param intent_path String Path of the intent object
    # @param [Hash] opts the optional parameters
    # @option opts [String] :site_path Policy Path of the site
    # @return [Array<(Span, Fixnum, Hash)>] Span data, response status code and response headers
    def get_span_0_with_http_info(intent_path, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: FederationInfraSitesApi.get_span_0 ...'
      end
      # verify the required parameter 'intent_path' is set
      if @api_client.config.client_side_validation && intent_path.nil?
        fail ArgumentError, "Missing the required parameter 'intent_path' when calling FederationInfraSitesApi.get_span_0"
      end
      # resource path
      local_var_path = '/infra/span'

      # query parameters
      query_params = {}
      query_params[:'intent_path'] = intent_path
      query_params[:'site_path'] = opts[:'site_path'] if !opts[:'site_path'].nil?

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
        :return_type => 'Span')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FederationInfraSitesApi#get_span_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
