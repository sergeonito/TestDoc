require "#{Dir.pwd}/MainHelper"

# T1 class
class T1
  extend Helpers::MainHelper

  # Container for T1 section
  def self.container
    $browser.element(:xpath => ".//div[@class='t1 section']")
  end

end