module BestInPlaceish
  class Utils

    def self.build_best_in_placeish_id(object, field)
      if object.is_a?(Symbol) || object.is_a?(String)
        return "best_in_placeish_#{object}_#{field}"
      end

      id = "best_in_placeish_#{object.class.to_s.demodulize.underscore}"
      id << "_#{object.id}" if object.class.ancestors.include?(ActiveRecord::Base)
      id << "_#{field}"
      id
    end
  end
end
