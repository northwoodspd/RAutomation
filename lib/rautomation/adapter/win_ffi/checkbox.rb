module RAutomation
  module Adapter
    module WinFfi
      class Checkbox
        include WaitHelper
        include Locators
        include ButtonHelper

        def initialize(window, locators)
          @window = window
          extract(locators)
        end

      end
    end
  end
end
