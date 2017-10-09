$(document).ready(function(){
  // $('.hiddeninfo').hide();
  $('#onsite').hover (function() {
      $("#onsitedrop").toggle();
  },
  function(){$("#onsitedrop").toggle();
  })

  $('#remote').hover (function() {
      $("#remotedrop").toggle();
  },
  function(){$("#remotedrop").toggle();
  })

})

// $(document).ready(function(){
//   // $('.hiddeninfo').hide();
//   $('#onsite').on({
//     mouseenter: function() {
//       $('#onsitedrop').slideToggle('slow');
//     }),
//     mouseleave: function() {
//       $('#onsitedrop').slideToggle('slow');
//     })
//   })
// })
