require_relative 'MainHelper'

# Trending class
class WeatherHub
  extend Helpers::MainHelper

  # Container for Weather hub section
  def self.container
    $browser.div(:class => 'weather-hub')
  end

end