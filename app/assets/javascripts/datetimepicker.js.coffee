ready = ->
  $('.datetimepicker').datetimepicker()
  $('.datetimepicker').on 'change', (event) ->
    textId = $(event.target).data('id')
    currentValue = $("#mock_#{textId}").val()
    formattedValue = moment(currentValue).format("YYYY-M-D HH:mm")
    $("##{textId}").val(formattedValue)

$(document).ready(ready)
$(document).on('page:load', ready)