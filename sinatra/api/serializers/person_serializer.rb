# frozen_string_literal: true

module Api
  class PersonSerializer
    def self.serialize(name:)
      { name: name }.to_json
    end
  end
end
