(function(global, $){
  $.fn.presentation = function() {
    var $title      = this.find('.display h1'),
        $subtitle   = this.find('.display h2');
        $display    = this.find('.display'),

    $title.animate({
      opacity: 1,
      padding: 0,
    }, 600, 'swing');
    $subtitle.animate({
      opacity: 1,
      padding: 0,
    }, 1000, 'swing');
    $display.animate({
      opacity: 1,
    }, 1300, 'swing');
  };

  $(document).ready(function() {
    $('.billboard').presentation();
  });
})(window, jQuery);
