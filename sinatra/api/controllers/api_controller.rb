# frozen_string_literal: true

module Api
  class ApiController < Sinatra::Base
    register Sinatra::CrossOrigin

    configure do
      enable :logging
      enable :cross_origin
      set :allow_origin, '*'
      set :allow_methods, %i[post]
      set :expose_headers, ['Content-Type']
    end

    options '*' do
      response.headers['Allow'] = 'POST'
      response.headers['Access-Control-Allow-Headers'] =
        'X-Requested-With, X-HTTP-Method-Override, Content-Type, Cache-Control, Accept'
      404
    end

    post '/person' do
      payload = JSON.parse(request.body.read, object_class: OpenStruct)
      status 200
      begin
        person = Person.new(name: payload[:name])
        PersonSerializer.serialize(name: person.name)
      rescue ArgumentError => e
        status 400
        ErrorSerializer.serialize(error:
          ErrorResponse.new(error: e.message).error)
      end
    end
  end
end
