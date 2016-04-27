//= require jquery
//= require jquery.turbolinks
//= require jquery_ujs
//= require jquery.easing
//= require turbolinks
//= require bootstrap-sprockets
//= require_tree .

// jQuery to collapse the navbar on scroll
function collapseNavbar() {
    if ($(".navbar").offset().top > 50) {
        $(".navbar-fixed-top").addClass("top-nav-collapse");
    } else {
        $(".navbar-fixed-top").removeClass("top-nav-collapse");
    }
}
$(window).scroll(collapseNavbar);
$(document).ready(collapseNavbar);

// Closes the Responsive Menu on Menu Item Click
$(function(){
  $('.navbar-collapse ul li a').on('click',function() {
    if ($(this).attr('class') != 'dropdown-toggle active' && $(this).attr('class') != 'dropdown-toggle') {
     $('.navbar-toggle:visible').click();
    }
  });
})

//Scroll Fading
