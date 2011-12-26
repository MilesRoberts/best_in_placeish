module BestInPlaceish

  class SetupGenerator < Rails::Generators::Base
    source_root File.expand_path("../../../../public/javascripts", __FILE__)
    desc "Copies best_in_placeish.js to the /public/javascripts folder of your app."

    def copy_js
      copy_file "best_in_placeish.js", "public/javascripts/best_in_placeish.js"
    end
  end
end
