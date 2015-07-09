require_relative 'MainHelper'

# Navigation class, selectors and methods
class Navigation
  extend Helpers::MainHelper

  # Container for Main navigation
  def self.container
    $browser.div(:class => 'navbar-inner')
  end

  # Logo image selector
  # @return [Watir::HTMLElement]
  def self.logo_img
    container.a(:class => 'brand')
  end

  # Menu button selector
  # @return [Watir::HTMLElement]
  def self.menu_btn
    container.span(:class => 'header-btn')
  end

  # More button dropdown selector
  # @return [Watir::HTMLElement]
  def self.more_dropdown
    container.li(:class => 'dropdown')
  end

  # More container selector
  # @return [Watir::HTMLElement]
  def self.more_container
    container.ul(:class => 'dropdown-menu')
  end

  # Language dropdown selector
  # @return [Watir::HTMLElement]
  def self.language_dropdown
    container.div(:class => 'language-bar')
  end

  # Language container selector
  # @return [Watir::HTMLElement]
  def self.language_container
    container.div(:class => 'header-lang-nav')
  end

  # Other tours dropdown selector
  # @return [Watir::HTMLElement]
  def self.tours_dropdown
    container.div(:class => 'other-tours')
  end

  # Other tours container selector
  # @return [Watir::HTMLElement]
  def self.tours_container
    container.div(:class => 'header-tours-nav')
  end



  # Search button selector
  # @return [Watir::HTMLElement]
  def self.search_btn
    container.a(:class => 'icon-search')
  end



  # Get available languages in nav menu
  # @return [Array[String]]
  def self.get_languages
    list = Array.new
    language_container.as.each { |link|
      list << link.text
    }
    return list
  end

  # Get more items available in nav menu
  # @return [Array[String]]
  def self.get_more_items
    list = Array.new
    more_container.as.each { |link|
      list << link.text
    }
    return list
  end

  # Get more items available in nav menu
  # @return [Array[String]]
  def self.get_other_tours
    list = Array.new
    tours_container.as.each { |link|
      list << link.text
    }
    return list
  end

  # Search by text
  def self.search_by(search_text)
    search_btn.click
    container.text_field(:id => 'topNavSearch').when_present.set(search_text)
    container.a(:class => 'btn-submit').click
  end

end