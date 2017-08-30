var ready;
ready = function() {

  // Fade out alert messages
  $('.alert').delay(5000).fadeOut(800);


  // Initialize elveateZoom
  $(".img-zoom").elevateZoom();
}

// Separate document ready function for Raty plugin to reduce unnecessary code being run during Comments controller ajax requests
var raty;
raty = function() {
  // Initialize Raty
  $('.rating').raty( { path: '/assets', scoreName: 'comment[rating]' } );
  $('.rated').raty( { path: '/assets',
    readOnly: true,
    score: function() {
      return $(this).attr('data-score');
    }
  } );
}

// turbolinks compatible document ready function which still functions upon page refresh
$(document).ready(ready);
$(document).on('page:load', ready);
// Still want Raty plugin to initialize on document ready
$(document).ready(raty);
$(document).on('page:load', raty);