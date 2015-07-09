require_relative 'MainHelper'

# Meet the player class
class MeetPlayer
  extend Helpers::MainHelper
  extend Helpers::SliderHelper

  # Container for Meet the player section
  def self.container
    $browser.element(:xpath => ".//div[@class='meet-the-players section']")
  end

end