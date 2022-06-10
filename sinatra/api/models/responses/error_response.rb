# frozen_string_literal: true

module Api
  class ErrorResponse
    attr_reader :error

    def initialize(error:)
      @error = error
    end
  end
end
