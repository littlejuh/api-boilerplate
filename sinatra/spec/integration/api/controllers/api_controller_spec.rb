# frozen_string_literal: true

require 'spec_helper'

describe Api::ApiController do
  let(:app) { Api::ApiController.new }

  context 'POST /other not found error' do
    let(:get_other) { post '/other' }

    it 'returns status 404' do
      expect(get_other.status).to eq 404
    end
  end

  context 'POST /person successfully' do
    let(:request_params) do
      {
        "name": 'Xuxuzinho'
      }.to_json
    end
    let(:post_person) { post '/person', request_params }

    it 'returns status 200 ok' do
      expect(post_person.status).to eq 200
    end

    it 'person response' do
      expected_response = '{"name":"Xuxuzinho"}'
      expect(post_person.body).to eq(expected_response)
    end
  end

  context 'POST /person argument error when invalid parameters' do
    let(:request_params) do
      {
        "person": 'Xuxuzinho'
      }.to_json
    end
    let(:post_person) { post '/person', request_params }

    it 'returns status 400 BadRequest' do
      expect(post_person.status).to eq 400
    end

    it 'person error response' do
      expected_response = '{"error":"name should be present"}'
      expect(post_person.body).to eq(expected_response)
    end
  end
end
