(function(global, $){
  $.fn.presentation = function() {
    var $title      = this.find('.display h1'),
        $subtitle   = this.find('.display h2');
        $display    = this.find('.display'),

    $title.animate({
      opacity: 1,
      padding: 0,
    }, 500, 'swing');
    $subtitle.animate({
      opacity: 1,
      padding: 0,
    }, 900, 'swing');
    $display.animate({
      opacity: 1,
    }, 800, 'swing');
  };

  $(document).ready(function() {
    $('.billboard').presentation();
  });
})(window, jQuery);
