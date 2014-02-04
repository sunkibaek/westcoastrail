// Generated by CoffeeScript 1.6.3
(function() {
  $(document).ready(function() {
    if (window.location.href.indexOf('usa_tours') < 0) {
      $('.our-tours, .sub').mouseenter(function() {
        $('.sub').slideDown();
        return $(this).addClass('active');
      });
      $('header nav').mouseleave(function() {
        return setTimeout(function() {
          $('.sub').slideUp();
          return $('.our-tours').removeClass('active');
        }, 400);
      });
    } else {
      $('.sub').slideDown();
    }
    $('.controls .btn').click(function(e) {
      e.preventDefault();
      $('.controls .btn').removeClass('active');
      $(this).addClass('active');
      return $('#trip-type').attr('value', $(this).data('value'));
    });
    $('#depature, #return').datepicker();
    return $('#depature, #return').datepicker('option', 'dateFormat', 'yy-mm-dd');
  });

}).call(this);
