# frozen_string_literal: true

module Api
  class Person
    attr_reader :name

    def initialize(name:)
      validate?(name: name)
      @name = name
    end

    private

    def validate?(name:)
      validate_name?(name: name)
    end

    def validate_name?(name:)
      return true unless name.nil?

      raise ArgumentError,
            'name should be present'
    end
  end
end
