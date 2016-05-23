(function(global, $){
  $('.mobile-menu').click(function(){
    $('.sidebar-menu').toggleClass('show-menu');
    $('.content').toggleClass('darker-content');
  });

  $('.content').click(function(){
    $('.sidebar-menu').removeClass('show-menu');
    $('.content').removeClass('darker-content');
  });
})(window, jQuery);
