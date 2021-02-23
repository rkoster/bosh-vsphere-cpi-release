=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  # Client SSL profile binding.
  class LBClientSslProfileBinding
    # Client authentication mode.
    attr_accessor :client_auth

    # A Certificate Revocation List (CRL) can be specified in the client-side SSL profile binding to disallow compromised client certificates. 
    attr_accessor :client_auth_crl_paths

    # If client auth type is REQUIRED, client certificate must be signed by one of the trusted Certificate Authorities (CAs), also referred to as root CAs, whose self signed certificates are specified. 
    attr_accessor :client_auth_ca_paths

    # Authentication depth is used to set the verification depth in the client certificates chain. 
    attr_accessor :certificate_chain_depth

    # Client-side SSL profile binding allows multiple certificates, for different hostnames, to be bound to the same virtual server. 
    attr_accessor :sni_certificate_paths

    # A default certificate should be specified which will be used if the server does not host multiple hostnames on the same IP address or if the client does not support SNI extension. 
    attr_accessor :default_certificate_path

    # Client SSL profile defines reusable, application-independent client side SSL properties. 
    attr_accessor :ssl_profile_path

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'client_auth' => :'client_auth',
        :'client_auth_crl_paths' => :'client_auth_crl_paths',
        :'client_auth_ca_paths' => :'client_auth_ca_paths',
        :'certificate_chain_depth' => :'certificate_chain_depth',
        :'sni_certificate_paths' => :'sni_certificate_paths',
        :'default_certificate_path' => :'default_certificate_path',
        :'ssl_profile_path' => :'ssl_profile_path'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'client_auth' => :'String',
        :'client_auth_crl_paths' => :'Array<String>',
        :'client_auth_ca_paths' => :'Array<String>',
        :'certificate_chain_depth' => :'Integer',
        :'sni_certificate_paths' => :'Array<String>',
        :'default_certificate_path' => :'String',
        :'ssl_profile_path' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'client_auth')
        self.client_auth = attributes[:'client_auth']
      else
        self.client_auth = 'IGNORE'
      end

      if attributes.has_key?(:'client_auth_crl_paths')
        if (value = attributes[:'client_auth_crl_paths']).is_a?(Array)
          self.client_auth_crl_paths = value
        end
      end

      if attributes.has_key?(:'client_auth_ca_paths')
        if (value = attributes[:'client_auth_ca_paths']).is_a?(Array)
          self.client_auth_ca_paths = value
        end
      end

      if attributes.has_key?(:'certificate_chain_depth')
        self.certificate_chain_depth = attributes[:'certificate_chain_depth']
      else
        self.certificate_chain_depth = 3
      end

      if attributes.has_key?(:'sni_certificate_paths')
        if (value = attributes[:'sni_certificate_paths']).is_a?(Array)
          self.sni_certificate_paths = value
        end
      end

      if attributes.has_key?(:'default_certificate_path')
        self.default_certificate_path = attributes[:'default_certificate_path']
      end

      if attributes.has_key?(:'ssl_profile_path')
        self.ssl_profile_path = attributes[:'ssl_profile_path']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if !@certificate_chain_depth.nil? && @certificate_chain_depth > 2147483647
        invalid_properties.push('invalid value for "certificate_chain_depth", must be smaller than or equal to 2147483647.')
      end

      if !@certificate_chain_depth.nil? && @certificate_chain_depth < 1
        invalid_properties.push('invalid value for "certificate_chain_depth", must be greater than or equal to 1.')
      end

      if @default_certificate_path.nil?
        invalid_properties.push('invalid value for "default_certificate_path", default_certificate_path cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      client_auth_validator = EnumAttributeValidator.new('String', ['REQUIRED', 'IGNORE'])
      return false unless client_auth_validator.valid?(@client_auth)
      return false if !@certificate_chain_depth.nil? && @certificate_chain_depth > 2147483647
      return false if !@certificate_chain_depth.nil? && @certificate_chain_depth < 1
      return false if @default_certificate_path.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] client_auth Object to be assigned
    def client_auth=(client_auth)
      validator = EnumAttributeValidator.new('String', ['REQUIRED', 'IGNORE'])
      unless validator.valid?(client_auth)
        fail ArgumentError, 'invalid value for "client_auth", must be one of #{validator.allowable_values}.'
      end
      @client_auth = client_auth
    end

    # Custom attribute writer method with validation
    # @param [Object] certificate_chain_depth Value to be assigned
    def certificate_chain_depth=(certificate_chain_depth)
      if !certificate_chain_depth.nil? && certificate_chain_depth > 2147483647
        fail ArgumentError, 'invalid value for "certificate_chain_depth", must be smaller than or equal to 2147483647.'
      end

      if !certificate_chain_depth.nil? && certificate_chain_depth < 1
        fail ArgumentError, 'invalid value for "certificate_chain_depth", must be greater than or equal to 1.'
      end

      @certificate_chain_depth = certificate_chain_depth
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          client_auth == o.client_auth &&
          client_auth_crl_paths == o.client_auth_crl_paths &&
          client_auth_ca_paths == o.client_auth_ca_paths &&
          certificate_chain_depth == o.certificate_chain_depth &&
          sni_certificate_paths == o.sni_certificate_paths &&
          default_certificate_path == o.default_certificate_path &&
          ssl_profile_path == o.ssl_profile_path
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [client_auth, client_auth_crl_paths, client_auth_ca_paths, certificate_chain_depth, sni_certificate_paths, default_certificate_path, ssl_profile_path].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = NSXTPolicy.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end
end
