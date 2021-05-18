// Note to self: make it smarter
$(document).ready(function() {
                
  // Step -1 : Create an event for click to each panel
  $('.tab-panels .tabs li').on('click', function(){ //$-1 starts
    $('.tab-panels .tabs .active').removeClass('active'); // removes active class from li that was clicked
    $(this).addClass('active'); // adding the active class to this so switching tabs would switch the active class to the current li that was clicked and remove active class from previous li
    var paneltoshow = $(this).attr('rel'); // storing and later on referencing li that was clicked using rel attribute. You can use anything else with say, data-yourIdname instead of rel. Upto you.

//alert(paneltoshow);                       
$('.tab-panels .panel.active').slideUp('100', function(){
$(this).removeClass('active');              //console.log(this);

$('#'+paneltoshow).delay('100').slideDown(function () {
$(this).addClass('active');           //console.log(this);    
});
});

  }); //$-1 ends




  });
/* ready ends here */
