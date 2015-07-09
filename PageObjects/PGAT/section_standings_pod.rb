require_relative 'MainHelper'

# Standings Pod class
class StandingsPod
  extend Helpers::MainHelper
  extend Helpers::TabsHelper

  # Container for Standings Pod section
  def self.container
    $browser.element(:xpath => ".//section[@class='clearfix module-standings-pod']")
  end

end