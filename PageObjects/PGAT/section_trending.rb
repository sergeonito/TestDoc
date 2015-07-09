require_relative 'MainHelper'

# Trending class
class Trending
  extend Helpers::MainHelper
  extend Helpers::TabsHelper

  # Container for Trending section
  def self.container
    $browser.div(:class => 'trending section')
  end

end