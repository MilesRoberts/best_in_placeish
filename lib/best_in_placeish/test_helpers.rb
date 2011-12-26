module BestInPlaceishish
  module TestHelpers

    def bip_area(model, attr, new_value)
      id = BestInPlaceishish::Utils.build_best_in_placeish_id model, attr
      page.execute_script <<-JS
        $("##{id}").click();
        $("##{id} form textarea").val('#{new_value}');
        $("##{id} form textarea").blur();
      JS
    end

    def bip_text(model, attr, new_value)
      id = BestInPlaceish::Utils.build_best_in_placeish_id model, attr
      page.execute_script <<-JS
        $("##{id}").click();
        $("##{id} input[name='#{attr}']").val('#{new_value}');
        $("##{id} form").submit();
      JS
    end

    def bip_bool(model, attr)
      id = BestInPlaceish::Utils.build_best_in_placeish_id model, attr
      page.execute_script("$('##{id}').click();")
    end

    def bip_select(model, attr, name)
      id = BestInPlaceish::Utils.build_best_in_placeish_id model, attr
      page.execute_script <<-JS
        (function() {
          $("##{id}").click();
          var opt_value = $("##{id} select option:contains('#{name}')").attr('value');
          $("##{id} select option[value='" + opt_value + "']").attr('selected', true);
          $("##{id} select").change();
        })();
      JS
    end
  end
end
