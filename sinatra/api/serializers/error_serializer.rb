# frozen_string_literal: true

module Api
  class ErrorSerializer
    def self.serialize(error:)
      { error: error }.to_json
    end
  end
end
