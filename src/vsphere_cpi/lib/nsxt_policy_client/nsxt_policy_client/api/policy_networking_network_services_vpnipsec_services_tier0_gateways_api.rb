=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.19

=end

require 'uri'

module NSXTPolicy
  class PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Read the L3Vpn Context
    # Read the L3Vpn Context under tier-0. This API is deprecated. Please use GET /infra/tier-0s/<tier-0-id>/locale-services/ <locale-service-id>/ipsec-vpn-services/default instead. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @return [L3VpnContext]
    def read_l3_vpn_context(tier_0_id, locale_service_id, opts = {})
      data, _status_code, _headers = read_l3_vpn_context_with_http_info(tier_0_id, locale_service_id, opts)
      data
    end

    # Read the L3Vpn Context
    # Read the L3Vpn Context under tier-0. This API is deprecated. Please use GET /infra/tier-0s/&lt;tier-0-id&gt;/locale-services/ &lt;locale-service-id&gt;/ipsec-vpn-services/default instead. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(L3VpnContext, Fixnum, Hash)>] L3VpnContext data, response status code and response headers
    def read_l3_vpn_context_with_http_info(tier_0_id, locale_service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi.read_l3_vpn_context ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi.read_l3_vpn_context"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi.read_l3_vpn_context"
      end
      # resource path
      local_var_path = '/infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/l3vpn-context'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s)

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
        :return_type => 'L3VpnContext')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi#read_l3_vpn_context\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Read the L3Vpn Context
    # Read the L3Vpn Context under tier-0. This API is deprecated. Please use GET /infra/tier-0s/<tier-0-id>/locale-services/ <locale-service-id>/ipsec-vpn-services/default instead. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @return [L3VpnContext]
    def read_l3_vpn_context_0(tier_0_id, locale_service_id, opts = {})
      data, _status_code, _headers = read_l3_vpn_context_0_with_http_info(tier_0_id, locale_service_id, opts)
      data
    end

    # Read the L3Vpn Context
    # Read the L3Vpn Context under tier-0. This API is deprecated. Please use GET /infra/tier-0s/&lt;tier-0-id&gt;/locale-services/ &lt;locale-service-id&gt;/ipsec-vpn-services/default instead. 
    # @param tier_0_id 
    # @param locale_service_id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(L3VpnContext, Fixnum, Hash)>] L3VpnContext data, response status code and response headers
    def read_l3_vpn_context_0_with_http_info(tier_0_id, locale_service_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi.read_l3_vpn_context_0 ...'
      end
      # verify the required parameter 'tier_0_id' is set
      if @api_client.config.client_side_validation && tier_0_id.nil?
        fail ArgumentError, "Missing the required parameter 'tier_0_id' when calling PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi.read_l3_vpn_context_0"
      end
      # verify the required parameter 'locale_service_id' is set
      if @api_client.config.client_side_validation && locale_service_id.nil?
        fail ArgumentError, "Missing the required parameter 'locale_service_id' when calling PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi.read_l3_vpn_context_0"
      end
      # resource path
      local_var_path = '/global-infra/tier-0s/{tier-0-id}/locale-services/{locale-service-id}/l3vpn-context'.sub('{' + 'tier-0-id' + '}', tier_0_id.to_s).sub('{' + 'locale-service-id' + '}', locale_service_id.to_s)

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
        :return_type => 'L3VpnContext')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicyNetworkingNetworkServicesVPNIPSECServicesTier0GatewaysApi#read_l3_vpn_context_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
