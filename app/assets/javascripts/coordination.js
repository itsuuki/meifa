$(document).ready(function(){
  $('.bottom1').show();
  $('.allimage').hide();
  $('.change-btn').click(function () {
    $('#wrap').toggleClass('.change-btn');
    if($('#wrap').hasClass('.change-btn')){
      $('.bottom1').hide();
      $('.allimage').show();
    }else{
      $('.bottom1').show();
      $('.allimage').hide();
    }
  });
});