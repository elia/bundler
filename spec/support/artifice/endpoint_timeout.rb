require File.expand_path("../endpoint_fallback", __FILE__)

Artifice.deactivate

class EndpointTimeout < EndpointFallback
  SLEEP_TIMEOUT = 15

  get "/api/v1/dependencies" do
    sleep(SLEEP_TIMEOUT)
  end
end

Artifice.activate_with(EndpointTimeout)
