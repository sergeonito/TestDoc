require_relative 'MainHelper'

# Advertisement class
class Ads
  #extend Helpers::MainHelper

  # Attribute's name for ads
  ATTR = 'data-cb-ad-id'

  # Ads sections array
  # @return [Array]
  def self.ads_sections
    $browser.elements(:xpath => ".//div[@#{ATTR}]")
  end

  # Get ads section selector
  def self.ads_section(position)
    $browser.element(:xpath => ".//div[@#{ATTR}='#{position}']")
  end


  # Check if ads is present? (loaded)
  # by position @param [String]
  def self.present?(position)
    ads_section(position).iframe.present?
  end

  # Wait for ads is loaded
  def self.wait_for_ads_loaded(position)
    Watir::Wait.until(5) {
      present?(position)
    }
  end


  # Get all positions on current page for ads
  # @return [Array]
  def self.get_positions
    list = Array.new
    ads_sections.each { |ads|
      list << ads.attribute_value(ATTR)
    }
    return list
  end

  # Scroll to ads section
  def self.scroll_to(position)
    ads_section(position).wd.location_once_scrolled_into_view
  end


end