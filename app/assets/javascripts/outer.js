$(function(){
  $("#new_outer").on("submit", function(e){
    e.preventDefault();
    var formData = new FormData(this);
    var url = $(this).attr("action")
    $.ajax({
      url: url, 
      type: 'POST',
      data: formData,  
      dataType: 'json',
      processData: false,
      contentType: false
    })
    .done(function(data){
      $('.add-btn').prop('disabled', false);
      alert("写真を追加しました。")
    })
  })
})