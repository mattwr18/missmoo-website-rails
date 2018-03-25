
 /* jQuery Preloader
  -----------------------------------------------*/
$(window).load(function(){
    $('.preloader').fadeOut(1000); // set duration in brackets
});


$(document).ready(function() {

  /* Hide mobile menu after clicking on a link
    -----------------------------------------------*/
    $('.navbar-collapse a').click(function(){
        $(".navbar-collapse").collapse('hide');
    });


  /* jQuery to collapse the navbar on scroll
    -----------------------------------------------*/
  $(window).scroll(function() {
      if ($(".navbar").offset().top > 50) {
          $(".navbar-fixed-top").addClass("top-nav-collapse");
      } else {
          $(".navbar-fixed-top").removeClass("top-nav-collapse");
      }
  });


  /* BxSlider
    -----------------------------------------------*/
  (function (window, $) {
  'use strict';

  // Cache document for fast access.
  var document = window.document;

  function mainSlider() {
    $('.bxslider').bxSlider({
		auto: true,
      pagerCustom: '#bx-pager',
      mode: 'fade',
      nextText: '',
      prevText: ''
    });
  }

  mainSlider();

  var $links = $(".bx-wrapper .bx-controls-direction a, #bx-pager a");
  $links.click(function(){
     $(".slider-caption").removeClass('wowfadeInLeft');
     $(".slider-caption").addClass('wowfadeInLeft');
  });

  $(".bx-controls").addClass('container');
  $(".bx-next").addClass('fa fa-angle-right');
  $(".bx-prev").addClass('fa fa-angle-left');


  })(window, jQuery);


  /* Parallax section
    -----------------------------------------------*/
  function initParallax() {
    $('#milks').parallax("100%", 0.3);
    $('desserts').parallax("100%", 0.2);
    $('#desserts').parallax("100%", 0.3);
    $('#contact').parallax("100%", 0.2);
  }
  initParallax();


  /* wow
  -------------------------------*/
  new WOW({ mobile: false }).init();

  });
