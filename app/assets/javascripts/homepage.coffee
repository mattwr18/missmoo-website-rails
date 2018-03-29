# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
###jQuery Preloader
 -----------------------------------------------
###

###
# Welcome to the new js2coffee 2.0, now
# rewritten to use the esprima parser.
# try it out!
###

listen = (el, event, handler) ->
  if el.addEventListener
    el.addEventListener event, handler
  else
    el.attachEvent 'on' + event, ->
      handler.call el

$(window).load ->
  $('.preloader').fadeOut 1000
  # set duration in brackets
  return
$(document).ready ->

  ### Hide mobile menu after clicking on a link
    -----------------------------------------------
  ###

  ### Parallax section
    -----------------------------------------------
  ###

  initParallax = ->
    $('#milk').parallax '100%', 0.3
    $('#about').parallax '100%', 0.2
    $('#desserts').parallax '100%', 0.3
    $('#cheese').parallax '100%', 0.1
    $('#fermentables').parallax '100%', 0.3
    $('#contact').parallax '100%', 0.2
    return

  $('.navbar-collapse a').click ->
    $('.navbar-collapse').collapse 'hide'
    return

  ### jQuery to collapse the navbar on scroll
    -----------------------------------------------
  ###

  $(window).scroll ->
    if $('.navbar').offset().top > 50
      $('.navbar-fixed-top').addClass 'top-nav-collapse'
    else
      $('.navbar-fixed-top').removeClass 'top-nav-collapse'
    return

  ### BxSlider
    -----------------------------------------------
  ###

  ((window, $) ->

    mainSlider = ->
      $('.bxslider').bxSlider
        auto: true
        pagerCustom: '#'
        mode: 'fade'
        nextText: ''
        prevText: ''
      return

    'use strict'
    # Cache document for fast access.
    document = window.document
    mainSlider()
    $links = $('.bx-wrapper .bx-controls-direction a')
    $links.click ->
      $('.slider-caption').removeClass 'animated fadeInLeft'
      $('.slider-caption').addClass 'animated fadeInLeft'
      return
    $('.bx-controls').addClass 'container'
    $('.bx-next').addClass 'fa fa-angle-right'
    $('.bx-prev').addClass 'fa fa-angle-left'
    return
  ) window, jQuery
  initParallax()

  ### wow
  -------------------------------
  ###

  new WOW(mobile: false).init()
  return
