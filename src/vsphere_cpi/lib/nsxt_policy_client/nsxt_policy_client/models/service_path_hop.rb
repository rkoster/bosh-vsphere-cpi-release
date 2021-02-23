=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  # Represents a service VM implementing a particular service in a service chain
  class ServicePathHop
    # Indicating whether the corresponding service VM is active or not per DP.
    attr_accessor :is_active_from_dp

    # Indicating whether the corresponding service VM is active or not per MP.
    attr_accessor :is_active_from_mp

    # ID of the virtual network interface.
    attr_accessor :vif

    # MAC address of the virtual network interface.
    attr_accessor :mac_address

    # Action that will be taken by the corresponding service VM of the hop.
    attr_accessor :action

    # Indicating whether the corresponding service VM is active or not per CCP.
    attr_accessor :is_active_from_ccp

    # Indicating the maintenance mode of the corresponding service VM.
    attr_accessor :in_maintenance_mode

    # Indicating whether NSH liveness is supported or not by the corresponding service VM.
    attr_accessor :nsh_liveness_support

    # Indicating whether service is configured to decrement SI field in NSH metadata.
    attr_accessor :can_decrement_si

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
        :'is_active_from_dp' => :'is_active_from_dp',
        :'is_active_from_mp' => :'is_active_from_mp',
        :'vif' => :'vif',
        :'mac_address' => :'mac_address',
        :'action' => :'action',
        :'is_active_from_ccp' => :'is_active_from_ccp',
        :'in_maintenance_mode' => :'in_maintenance_mode',
        :'nsh_liveness_support' => :'nsh_liveness_support',
        :'can_decrement_si' => :'can_decrement_si'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'is_active_from_dp' => :'BOOLEAN',
        :'is_active_from_mp' => :'BOOLEAN',
        :'vif' => :'String',
        :'mac_address' => :'String',
        :'action' => :'String',
        :'is_active_from_ccp' => :'BOOLEAN',
        :'in_maintenance_mode' => :'BOOLEAN',
        :'nsh_liveness_support' => :'BOOLEAN',
        :'can_decrement_si' => :'BOOLEAN'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'is_active_from_dp')
        self.is_active_from_dp = attributes[:'is_active_from_dp']
      end

      if attributes.has_key?(:'is_active_from_mp')
        self.is_active_from_mp = attributes[:'is_active_from_mp']
      end

      if attributes.has_key?(:'vif')
        self.vif = attributes[:'vif']
      end

      if attributes.has_key?(:'mac_address')
        self.mac_address = attributes[:'mac_address']
      end

      if attributes.has_key?(:'action')
        self.action = attributes[:'action']
      end

      if attributes.has_key?(:'is_active_from_ccp')
        self.is_active_from_ccp = attributes[:'is_active_from_ccp']
      end

      if attributes.has_key?(:'in_maintenance_mode')
        self.in_maintenance_mode = attributes[:'in_maintenance_mode']
      end

      if attributes.has_key?(:'nsh_liveness_support')
        self.nsh_liveness_support = attributes[:'nsh_liveness_support']
      end

      if attributes.has_key?(:'can_decrement_si')
        self.can_decrement_si = attributes[:'can_decrement_si']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      action_validator = EnumAttributeValidator.new('String', ['SERVICE_ACTION_INVALID', 'COPY', 'REDIRECT'])
      return false unless action_validator.valid?(@action)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action)
      validator = EnumAttributeValidator.new('String', ['SERVICE_ACTION_INVALID', 'COPY', 'REDIRECT'])
      unless validator.valid?(action)
        fail ArgumentError, 'invalid value for "action", must be one of #{validator.allowable_values}.'
      end
      @action = action
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          is_active_from_dp == o.is_active_from_dp &&
          is_active_from_mp == o.is_active_from_mp &&
          vif == o.vif &&
          mac_address == o.mac_address &&
          action == o.action &&
          is_active_from_ccp == o.is_active_from_ccp &&
          in_maintenance_mode == o.in_maintenance_mode &&
          nsh_liveness_support == o.nsh_liveness_support &&
          can_decrement_si == o.can_decrement_si
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [is_active_from_dp, is_active_from_mp, vif, mac_address, action, is_active_from_ccp, in_maintenance_mode, nsh_liveness_support, can_decrement_si].hash
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
