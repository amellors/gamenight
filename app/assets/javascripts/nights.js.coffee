# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

@night_type_visable = ->
  $("#night_night_type_id").on "change", ->
    if @value == "2"
      $("#night_location").hide()
    else
      $("#night_location").show()

@show_gp_info = (ajax_url) ->
  $('#game_id').change ->
    $.ajax
      url: ajax_url
      data:
        game_id: $('#game_id').val()
      dataType: "script"