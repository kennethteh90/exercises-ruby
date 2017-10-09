$(document).ready(function(){
  // $('.hiddeninfo').hide();
  $('#onsite').hover (function() {
      $('#onsitedrop').slideToggle('fast');
  },
  function(){$('#onsitedrop').slideToggle('fast');
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
