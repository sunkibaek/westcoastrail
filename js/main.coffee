$(document).ready ->
  $('.our-tours, .sub').mouseenter ->
    $('.sub').slideDown()
    $(@).addClass('active')

  $('header nav').mouseleave ->
    setTimeout ->
      $('.sub').slideUp()
      $('.our-tours').removeClass('active')
    , 400

  $('.controls .btn').click (e) ->
    e.preventDefault()
    $('.controls .btn').removeClass('active')
    $(@).addClass('active')
    $('#trip-type').attr('value', $(@).data('value'))

  $('#depature, #return').datepicker()
  $('#depature, #return').datepicker('option', 'dateFormat', 'yy-mm-dd')
