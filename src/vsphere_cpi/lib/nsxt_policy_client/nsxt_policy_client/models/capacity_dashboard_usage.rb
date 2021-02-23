=begin
#NSX-T Data Center Policy API

#VMware NSX-T Data Center Policy REST API

OpenAPI spec version: 3.1.0.0.0

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.4.17

=end

require 'date'

module NSXTPolicy
  class CapacityDashboardUsage
    # Indicate the current usage count of object type. 
    attr_accessor :current_usage_count

    # This indicates the maximum threshold percentage for object type. 
    attr_accessor :max_threshold_percentage

    # Display name for NSX object type. 
    attr_accessor :display_name

    # Severity calculated from percentage usage 
    attr_accessor :severity

    # This is the maximum supported count for object type in consideration. 
    attr_accessor :max_supported_count

    # Indicate the object type for which usage is calculated. 
    attr_accessor :usage_type

    # This indicates the minimum threshold percentage for object type. 
    attr_accessor :min_threshold_percentage

    # Current usage percentage for object type 
    attr_accessor :current_usage_percentage

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
        :'current_usage_count' => :'current_usage_count',
        :'max_threshold_percentage' => :'max_threshold_percentage',
        :'display_name' => :'display_name',
        :'severity' => :'severity',
        :'max_supported_count' => :'max_supported_count',
        :'usage_type' => :'usage_type',
        :'min_threshold_percentage' => :'min_threshold_percentage',
        :'current_usage_percentage' => :'current_usage_percentage'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'current_usage_count' => :'Integer',
        :'max_threshold_percentage' => :'Float',
        :'display_name' => :'String',
        :'severity' => :'String',
        :'max_supported_count' => :'Integer',
        :'usage_type' => :'String',
        :'min_threshold_percentage' => :'Float',
        :'current_usage_percentage' => :'Float'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h| h[k.to_sym] = v }

      if attributes.has_key?(:'current_usage_count')
        self.current_usage_count = attributes[:'current_usage_count']
      end

      if attributes.has_key?(:'max_threshold_percentage')
        self.max_threshold_percentage = attributes[:'max_threshold_percentage']
      end

      if attributes.has_key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.has_key?(:'severity')
        self.severity = attributes[:'severity']
      end

      if attributes.has_key?(:'max_supported_count')
        self.max_supported_count = attributes[:'max_supported_count']
      end

      if attributes.has_key?(:'usage_type')
        self.usage_type = attributes[:'usage_type']
      end

      if attributes.has_key?(:'min_threshold_percentage')
        self.min_threshold_percentage = attributes[:'min_threshold_percentage']
      end

      if attributes.has_key?(:'current_usage_percentage')
        self.current_usage_percentage = attributes[:'current_usage_percentage']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @current_usage_count.nil?
        invalid_properties.push('invalid value for "current_usage_count", current_usage_count cannot be nil.')
      end

      if @max_threshold_percentage.nil?
        invalid_properties.push('invalid value for "max_threshold_percentage", max_threshold_percentage cannot be nil.')
      end

      if @display_name.nil?
        invalid_properties.push('invalid value for "display_name", display_name cannot be nil.')
      end

      if @severity.nil?
        invalid_properties.push('invalid value for "severity", severity cannot be nil.')
      end

      if @max_supported_count.nil?
        invalid_properties.push('invalid value for "max_supported_count", max_supported_count cannot be nil.')
      end

      if @usage_type.nil?
        invalid_properties.push('invalid value for "usage_type", usage_type cannot be nil.')
      end

      if @min_threshold_percentage.nil?
        invalid_properties.push('invalid value for "min_threshold_percentage", min_threshold_percentage cannot be nil.')
      end

      if @current_usage_percentage.nil?
        invalid_properties.push('invalid value for "current_usage_percentage", current_usage_percentage cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @current_usage_count.nil?
      return false if @max_threshold_percentage.nil?
      return false if @display_name.nil?
      return false if @severity.nil?
      severity_validator = EnumAttributeValidator.new('String', ['INFO', 'WARNING', 'CRITICAL', 'ERROR'])
      return false unless severity_validator.valid?(@severity)
      return false if @max_supported_count.nil?
      return false if @usage_type.nil?
      return false if @min_threshold_percentage.nil?
      return false if @current_usage_percentage.nil?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] severity Object to be assigned
    def severity=(severity)
      validator = EnumAttributeValidator.new('String', ['INFO', 'WARNING', 'CRITICAL', 'ERROR'])
      unless validator.valid?(severity)
        fail ArgumentError, 'invalid value for "severity", must be one of #{validator.allowable_values}.'
      end
      @severity = severity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          current_usage_count == o.current_usage_count &&
          max_threshold_percentage == o.max_threshold_percentage &&
          display_name == o.display_name &&
          severity == o.severity &&
          max_supported_count == o.max_supported_count &&
          usage_type == o.usage_type &&
          min_threshold_percentage == o.min_threshold_percentage &&
          current_usage_percentage == o.current_usage_percentage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [current_usage_count, max_threshold_percentage, display_name, severity, max_supported_count, usage_type, min_threshold_percentage, current_usage_percentage].hash
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
