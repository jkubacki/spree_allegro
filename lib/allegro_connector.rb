class AllegroConnector

  def self.connect
    webapi = Settings.allegro.webapi
    account = Settings.allegro.accounts.test
    client = Allegro::WebApi::Client.new do |config|
      config.user_login = account.login
      config.password = account.password
      config.webapi_key = webapi.key
      config.country_code = webapi.country_code
      config.wsdl = webapi.wsdl
    end
    client.login
    client
  end

  def self.connect_bazarka
    webapi = Settings.allegro.webapi
    account = Settings.allegro.accounts.test

    config = -> (config) do
      config.user_login = account.login
      config.password = account.password
      config.webapi_key = webapi.key
      config.country_code = webapi.country_code
    end

    BazarkaAllegro::Hooks::Client.new nil, &config
  end

end