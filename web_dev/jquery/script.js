$(document).ready(function(){
  $("#blue-example").css('color', 'blue');

  $('.highlight').css('background-color', 'yellow');

  $("#hides").click(function(){
    $("#hides").hide();
  });

  $("#list").click(function(){
    $("ul").animate({height: 'toggle'});
    // $("li").animate({right: '250px'});
  });

  $('#alert').click(function(){
    alert('THIS IS AN ALERT!!!!');
  });

  $('body').dblclick(function(){
    alert('Stop being so aggressive!');
  });

  $('#list').hover(function(){
    $('ul').css('color', 'red');
  },
  function(){
    $('ul').css('color', 'black');
  });
});