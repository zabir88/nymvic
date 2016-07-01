// jQuery for page scrolling feature - requires jQuery Easing plugin
$(function() {
    $('a.page-scroll').click(function(event) {
        var $anchor = $(this);
        $('html, body').stop().animate({
            scrollTop: $($anchor.attr('href')).offset().top
        }, 1200, 'easeInOutExpo');
        event.preventDefault();
    });
});

//jQuery Form validation in modal
$(function(){
  $(document).bind('ajaxError', 'form#new_user', function(event, jqxhr, settings, exception){
    $(event.data).render_form_errors( $.parseJSON(jqxhr.responseText) );
  });
});

(function($) {
  $.fn.modal_success = function(){
    // close modal
    this.modal('hide');
    // clear form input elements
    this.find('form input[type="text"]').val('');
    // clear error state
    this.clear_previous_errors();
  };
  $.fn.render_form_errors = function(errors){
    $form = this;
    this.clear_previous_errors();
    model = this.data('model');
    // show error messages in input form-group help-block
    $.each(errors, function(field, messages){
      $input = $('input[name="' + model + '[' + field + ']"], select[name="' + model + '[' + field + ']"]');
      $input.closest('.form-group').addClass('has-error').find('.help-block').html( messages.join(' & ') );
    });
  };
  $.fn.clear_previous_errors = function(){
    $('.form-group.has-error', this).each(function(){
      $('.help-block', $(this)).html('');
      $(this).removeClass('has-error');
    });
  }
}(jQuery));

