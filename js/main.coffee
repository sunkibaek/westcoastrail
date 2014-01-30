$(document).ready ->
  $('.our-tours, .sub').mouseenter ->
    $('.sub').slideDown()
    $(@).addClass('active')

  $('nav').mouseleave ->
    setTimeout ->
      $('.sub').slideUp()
      $('.our-tours').removeClass('active')
    , 1000
