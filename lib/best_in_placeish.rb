require "best_in_placeish/utils"
require "best_in_placeish/helper"

module BestInPlaceish
  autoload :TestHelpers, "best_in_placeish/test_helpers"
end

ActionView::Base.send(:include, BestInPlaceish::BestInPlaceishHelpers)
