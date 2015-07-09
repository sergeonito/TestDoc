# Module Helpers
module Helpers

  # Main Helper
  module MainHelper

    # Container selector
    def container
      $browser.body
    end

    # Wait for container
    def wait
      container.wait_until_present
    end

    # Wait while container is present
    def wait_while_present
      container.wait_while_present
    end

    # Check if element is present on the
    # page
    def present?
      container.present?
    end

    # Scroll to container
    def scroll_to
      container.wd.location_once_scrolled_into_view
    end

  end

# TabsHelper - class for working with tabs
  module TabsHelper

    SELECTOR_TAB = ".//a[@data-toggle='tab']"

    # Tabs selector
    # @return [Array]
    def tabs
      container.elements(:xpath => SELECTOR_TAB)
    end

    # Selector for specific tab
    # @param tab_name [String]
    # @return [Watir::HTMLElement]
    def tab(tab_name)
      tabs.each { |tab|
        return tab if tab.text == tab_name
      }
    end


    # Click on specific tab
    # @param tab_name [String]
    def click_tab(tab_name)
      tab(tab_name).click
    end

    # Get active tab
    # @return [String] name of active tab
    def get_active_tab
      container.li(:class => 'active').text
    end

    # Get all tabs names for section
    # @return [Array]
    def get_tabs
      list = Array.new
      tabs.each { |tab|
        list << tab.text
      }
      return list
    end

  end


# Helper methods for show more/less
  module ShowHelper

    # Container for show more/less buttons
    def show_container
      container.div(:class => 'response-btn')
    end

    # Click 'Show more' button
    def show_more
      show_container.span(:class => 'response-show-more').click
    end

    # Click 'Show more' button
    def show_less
      show_container.span(:class => 'response-show-less').click
    end

  end

  # Helper methods for Slider elements
  module SliderHelper

    # Previous button selector
    def prev_btn
      container.a(:class => 'bx-prev')
    end

    # Next button selector
    def next_btn
      container.a(:class => 'bx-next')
    end

    # Pager container selector
    def pager_container
      container.div(:class => 'bx-pager')
    end

    # Pager's items (points) selector
    def pager_items
      pager_container.as
    end


    # Click pager item by index
    def click_pager_item(index)
      pager_items[index - 1].click
    end

  end
end