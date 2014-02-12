$(document).ready ->
  # Main navigation menu
  if window.location.href.indexOf('usa_tours') < 0
    $('.our-tours, .sub').mouseenter ->
      $('.sub').slideDown()
      $(@).addClass('active')

    $('header nav').mouseleave ->
      setTimeout ->
        $('.sub').slideUp()
        $('.our-tours').removeClass('active')
      , 400
  else
    $('.sub').slideDown()

  # Trip type buttons for quick form
  $('.controls .btn').click (e) ->
    e.preventDefault()
    $('.controls .btn').removeClass('active')
    $(@).addClass('active')
    $('#trip-type').attr('value', $(@).data('value'))

  # jQuery date picker
  $('#depature, #return').datepicker()
  $('#depature, #return').datepicker('option', 'dateFormat', 'yy-mm-dd')

  # Home page slide show
  if window.location.href.indexOf('index') >= 0
    currentSlideNumber = 1

    showSlide = (slideNumber) ->
      $('.carousel .slide').hide('100')
      $('.carousel .slide:nth-child(' + slideNumber + ')').show('800')
      $('.selector a').removeClass('active')
      $('.selector li:nth-child(' + slideNumber + ') a').addClass('active')

    # Turn slide when a selector clicked
    $('.selector a').click (e) ->
      e.preventDefault()
      currentSlideNumber = $(@).data('slide')
      showSlide(currentSlideNumber)

    # Turn slide every certain second unless mouse is hover on the slide area
    setInterval ->
      unless $('.carousel').is(':hover')
        showSlide (currentSlideNumber % 3) + 1 
        currentSlideNumber += 1
    , 3600

  # Smooth scroll for sub menu
  $('.tour-buttons a').click (e) ->
    e.preventDefault()
    $('html').animate
      scrollTop: $($(@).attr('href')).offset().top
    , 800
