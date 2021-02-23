=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'uri'

module NSXTPolicy
  class PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get gateway policy statistics
    # Get statistics of a gateay policy. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [SecurityPolicyStatisticsListResult]
    def get_gateway_policy_statistics(domain_id, gateway_policy_id, opts = {})
      data, _status_code, _headers = get_gateway_policy_statistics_with_http_info(domain_id, gateway_policy_id, opts)
      data
    end

    # Get gateway policy statistics
    # Get statistics of a gateay policy. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(SecurityPolicyStatisticsListResult, Fixnum, Hash)>] SecurityPolicyStatisticsListResult data, response status code and response headers
    def get_gateway_policy_statistics_with_http_info(domain_id, gateway_policy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_policy_statistics ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_policy_statistics"
      end
      # verify the required parameter 'gateway_policy_id' is set
      if @api_client.config.client_side_validation && gateway_policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_policy_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_policy_statistics"
      end
      # resource path
      local_var_path = '/global-infra/domains/{domain-id}/gateway-policies/{gateway-policy-id}/statistics'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'gateway-policy-id' + '}', gateway_policy_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'SecurityPolicyStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi#get_gateway_policy_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get gateway policy statistics
    # Get statistics of a gateay policy. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [SecurityPolicyStatisticsListResult]
    def get_gateway_policy_statistics_0(domain_id, gateway_policy_id, opts = {})
      data, _status_code, _headers = get_gateway_policy_statistics_0_with_http_info(domain_id, gateway_policy_id, opts)
      data
    end

    # Get gateway policy statistics
    # Get statistics of a gateay policy. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(SecurityPolicyStatisticsListResult, Fixnum, Hash)>] SecurityPolicyStatisticsListResult data, response status code and response headers
    def get_gateway_policy_statistics_0_with_http_info(domain_id, gateway_policy_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_policy_statistics_0 ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_policy_statistics_0"
      end
      # verify the required parameter 'gateway_policy_id' is set
      if @api_client.config.client_side_validation && gateway_policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_policy_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_policy_statistics_0"
      end
      # resource path
      local_var_path = '/infra/domains/{domain-id}/gateway-policies/{gateway-policy-id}/statistics'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'gateway-policy-id' + '}', gateway_policy_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'SecurityPolicyStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi#get_gateway_policy_statistics_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get gateway rule statistics
    # Get statistics of a gateway rule. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [RuleStatisticsListResult]
    def get_gateway_rule_statistics(domain_id, gateway_policy_id, rule_id, opts = {})
      data, _status_code, _headers = get_gateway_rule_statistics_with_http_info(domain_id, gateway_policy_id, rule_id, opts)
      data
    end

    # Get gateway rule statistics
    # Get statistics of a gateway rule. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(RuleStatisticsListResult, Fixnum, Hash)>] RuleStatisticsListResult data, response status code and response headers
    def get_gateway_rule_statistics_with_http_info(domain_id, gateway_policy_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics"
      end
      # verify the required parameter 'gateway_policy_id' is set
      if @api_client.config.client_side_validation && gateway_policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_policy_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics"
      end
      # resource path
      local_var_path = '/infra/domains/{domain-id}/gateway-policies/{gateway-policy-id}/rules/{rule-id}/statistics'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'gateway-policy-id' + '}', gateway_policy_id.to_s).sub('{' + 'rule-id' + '}', rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'RuleStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi#get_gateway_rule_statistics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get gateway rule statistics
    # Get statistics of a gateway rule. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [RuleStatisticsListResult]
    def get_gateway_rule_statistics_0(domain_id, gateway_policy_id, rule_id, opts = {})
      data, _status_code, _headers = get_gateway_rule_statistics_0_with_http_info(domain_id, gateway_policy_id, rule_id, opts)
      data
    end

    # Get gateway rule statistics
    # Get statistics of a gateway rule. - no enforcement point path specified: Stats will be evaluated on each enforcement. point. - {enforcement_point_path}: Stats are evaluated only on the given enforcement point. 
    # @param domain_id 
    # @param gateway_policy_id 
    # @param rule_id 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :enforcement_point_path String Path of the enforcement point
    # @return [Array<(RuleStatisticsListResult, Fixnum, Hash)>] RuleStatisticsListResult data, response status code and response headers
    def get_gateway_rule_statistics_0_with_http_info(domain_id, gateway_policy_id, rule_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics_0 ...'
      end
      # verify the required parameter 'domain_id' is set
      if @api_client.config.client_side_validation && domain_id.nil?
        fail ArgumentError, "Missing the required parameter 'domain_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics_0"
      end
      # verify the required parameter 'gateway_policy_id' is set
      if @api_client.config.client_side_validation && gateway_policy_id.nil?
        fail ArgumentError, "Missing the required parameter 'gateway_policy_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics_0"
      end
      # verify the required parameter 'rule_id' is set
      if @api_client.config.client_side_validation && rule_id.nil?
        fail ArgumentError, "Missing the required parameter 'rule_id' when calling PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi.get_gateway_rule_statistics_0"
      end
      # resource path
      local_var_path = '/global-infra/domains/{domain-id}/gateway-policies/{gateway-policy-id}/rules/{rule-id}/statistics'.sub('{' + 'domain-id' + '}', domain_id.to_s).sub('{' + 'gateway-policy-id' + '}', gateway_policy_id.to_s).sub('{' + 'rule-id' + '}', rule_id.to_s)

      # query parameters
      query_params = {}
      query_params[:'enforcement_point_path'] = opts[:'enforcement_point_path'] if !opts[:'enforcement_point_path'].nil?

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
        :return_type => 'RuleStatisticsListResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PolicySecurityNorthSouthSecurityGatewayFirewallStatisticsApi#get_gateway_rule_statistics_0\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
