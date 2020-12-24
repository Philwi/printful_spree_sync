module PrintfulSpreeSync
  class Base
    include HTTParty
    base_uri = @@base_uri

    def initialize(api_base_uri: 'https://api.printful.com', api_key: Rails.application.credentials.dig(:printful, :api_key))
      @@base_uri = api_base_uri
      @headers = ctx[:headers] = { 'Authorization': 'Basic ' + Base64.encode64(api_key) }
    end

  end
end