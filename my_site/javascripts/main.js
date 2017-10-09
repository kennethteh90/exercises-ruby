$(document).ready(function(){
  // $('.hiddeninfo').hide();
  $('#hero-interactive').hover (function() {
      $(".hero").toggle();
  },
  function(){$(".hero").toggle();
  })

  $('#remote').hover (function() {
      $("#remotedrop").toggle();
  },
  function(){$("#remotedrop").toggle();
  })

})
