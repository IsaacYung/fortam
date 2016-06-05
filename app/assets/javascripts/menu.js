(function(global, $){
  'use strict'

  $.fn.header = function() {
    var $header = this,
        $arrow  = this.after();

    $(global).scroll(function () {
      if($(this).scrollTop() > 720 ) {
        $header.removeClass('on-top');
      } else {
        $header.addClass('on-top');
      }
    });
  };

  $(document).ready(function() {
    $('.header').header();
  });
})(window, jQuery);
