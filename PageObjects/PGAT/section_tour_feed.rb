require_relative 'MainHelper'

# Tour Feed class
class TourFeed
  extend Helpers::MainHelper
  extend Helpers::TabsHelper
  extend Helpers::ShowHelper

  # Container for Tour Feed section
  def self.container
    $browser.div(:class => 'feed section')
  end
end
