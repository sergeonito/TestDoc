require_relative 'MainHelper'

# CourseOverview class
class CourseOverview
  extend Helpers::MainHelper
  extend Helpers::SliderHelper

  # Container for Trending section
  def self.container
    $browser.div(:class => 'course-overview')
  end

end