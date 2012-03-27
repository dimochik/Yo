module Yo
  class Yo

    def initialize(app_id)
      @app_id = app_id
      @base_service_url = "http://where.yahooapis.com/geocode?"
      @valid_formats = {:json => "&flags=J", :xml => ""}
    end

    def get_location(address, format = :json)
      raise "Unsupported Format Exception" unless @valid_formats.keys.include?(format)
      address = URI.escape(address)
      get("#{@base_service_url}#{@valid_formats[format]}&location=#{address}")
    end

    def get_address_hash(address)
      address_json = JSON.parse(get_location(address))
      return address_json['ResultSet']
    end

    private
    def get(url)
      uri = URI.parse("#{url}&#{@app_id}")
      response = Net::HTTP.get_response(uri)
      return response.body
    end
  end
end