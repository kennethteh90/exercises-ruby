// $(document).ready(function(){
//   $('.faqcard').on('click', function() {
//     $('.hiddeninfo').css('display','block')
//     $('.faqcard').on('click', function() {
//       $('.hiddeninfo').css('display','none')
//     })
//   })
// })

// Only works once because it's not a toggle
// $(document).ready(function(){
//   if ($('.hiddeninfo').css('display') == 'none')
//     $('.faqcard').on('click', function() {
//       $('.hiddeninfo').css('display','block')
//     })
//   else
//     $('.faqcard').on('click', function() {
//       $('.hiddeninfo').css('display','none')
//     })
// })

// // my way
// $(document).ready(function(){
//   $('.hiddeninfo').hide();
//   $('#card1').click (function() {
//     $('#answer1').slideToggle('slow');
//   })
//
//   $('#card2').on('click', function() {
//     $('#answer2').animate({height:'toggle'});
//   })
//
//   $('#card3').on('click', function() {
//     $('#answer3').animate({height:'toggle'});
//   })
//
//   $('#card4').on('click', function() {
//     $('#answer4').animate({height:'toggle'});
//   })
//
//   $('#card5').on('click', function() {
//     $('#answer5').animate({height:'toggle'});
//   })
// })

// smart way
$(document).ready(function(){
  $('.hiddeninfo').hide();
  $('.shadowcard').click (function() {
    $(this).next().slideToggle('slow');
  })
})
