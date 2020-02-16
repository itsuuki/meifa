$(function(){
  // function buildHTML(coordination){
  //   console.log(coordination)
  //   var html =`<div class="aahh">
  //                 <img src="${coordination.outer}">
  //                 <select name="coordination[coordinations][coordination]" id="coordination_coordinations_coordination">
  //                   <option value="${coordination.id}">${coordination.coordination}</option>
  //                 </select>
  //                 <input type="checkbox" value="${coordination.idd}" name="${coordination.outer_id}" id="${coordination.id}">
  //               </div>
  //             </div>`
  //   return html;
  // };
  $("#new_outer").on("submit", function(e){
    e.preventDefault();
    // console.log("ok11")
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
      // console.log(data)
      // console.log(html)
      // var html = buildHTML(data)
      // $(".aadd").append(html)
      $('.add-btn').prop('disabled', false);
    })
  })
})