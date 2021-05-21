// Note to self: make it smarter
$(document).ready(function() {
                
  $('.tab-panels .tabs li').on('click', function(){ //$-1 starts
    $('.tab-panels .tabs .active').removeClass('active'); 
    $(this).addClass('active'); 
    var paneltoshow = $(this).attr('rel'); 

$('.tab-panels .panel.active').slideUp('100', function(){
$(this).removeClass('active');              //console.log(this);

$('#'+paneltoshow).delay('100').slideDown(function () {
$(this).addClass('active');           //console.log(this);    
});
});

  }); //$-1 ends




  });
/* ready ends here */
