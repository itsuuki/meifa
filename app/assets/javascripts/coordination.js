// $(function(){
//   $(".bottom1").show();
//   $(".bottom2").hide();
//   $('.btn').on('click',function(){
//     $(this).addClass(bottom2);
//     console.log(this)
//     console.log(bottom2)
//   });
// })
$(document).ready(function(){
  $('.bottom1').show();
  $('.bottom2').hide();
  $('.btn').click(function () {
    $('#wrap').toggleClass('.btn');
    if($('#wrap').hasClass('.btn')){
      $('.bottom1').hide();
      $('.bottom2').show();
    }else{
      $('.bottom1').show();
      $('.bottom2').hide();
    }
  });
});