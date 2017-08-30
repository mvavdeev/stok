// Products Pages Scripts

var productsReady;
productsReady = function(){
  
    // Give Equal height to products on products page
    $(window).load(function() {
        $('.product-layout').responsiveEqualHeightGrid();
    });

};

// turbolinks compatible document ready function
$(document).ready(productsReady);
$(document).on('page:load', productsReady);