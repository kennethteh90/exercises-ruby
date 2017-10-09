$(document).ready(function() {
  console.log('WHEEEEE')
  $('.trigger').on('click',function() {
    $('h1').html("<p>I've changed!</p>")
  })
})
