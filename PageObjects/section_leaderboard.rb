require_relative 'MainHelper'

# Leaderboard Banner class
class LeaderboardBanner
  extend Helpers::MainHelper

  # Container for Leaderboard Banner
  def self.container
    $browser.element(:xpath => ".//div[@class='leaderboardBanner section']")
  end

end