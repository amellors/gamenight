# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@show_win_info = (ajax_url) ->
  $("#finished_check").click ->
    ele = $(this).find(":checkbox")
    if ele.is(":checked")
      $.ajax
        url: ajax_url
        data:
          player_ids: $("#gameplay_player_ids").val()
        dataType: "script"
    else
      $("#gamewin_form").html ""