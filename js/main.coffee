$(document).ready ->
  $('.our-tours, .sub').mouseenter ->
    $('.sub').slideDown()
    $(@).addClass('active')

  $('header nav').mouseleave ->
    setTimeout ->
      $('.sub').slideUp()
      $('.our-tours').removeClass('active')
    , 400
