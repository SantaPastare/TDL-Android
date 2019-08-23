class SavedConversionData
    attr_reader :base_value, :conversion_value
    def initialize(base_value, conversion_value)
        @base_value = base_value
        @conversion_value = conversion_value
    end
end