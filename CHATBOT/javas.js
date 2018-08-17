//$('#kont .a').last().css('top','145px');
//$('#kont .b').last().css('top','135px');


$(document).ready(function(){

   $('#kont .send img').click(function(){
  
  if($('#kont .text').val() != "0"){
     $('#kont #backgroundofkont #messages').append('<li class="b">'+$('#kont .text textarea').val()+'</li>');
    $("#kont #backgroundofkont").animate({ scrollTop: 10000 }, "slow");
    $('#kont .text textarea').val('').empty();
    
   } 

 }); 
  
  
  
  $('#kont .text textarea').keypress(function(e){
      if(e.which == 13 && !e.shiftKey){
          var sample = $(this).val();
          

          if(sample.search("timetable")>=0)
            var keyword="timetable";
          else if(sample.search("mess")>=0)
            var keyword="mess";
          else if(sample.search("address")>=0)
            var keyword="address";
          else if(sample.search("timing")>=0)
            var keyword="timing";
          else if(sample.search("contact")>=0)
            var keyword="contact";
          else if(sample.search("courses")>=0)
            var keyword="courses";
          else if(sample.search("admission")>=0)
            var keyword="admission";
          else if(sample.search("campus")>=0)
            var keyword="campus";
          else if(sample.search("fee")>=0)
            var keyword="fee";
          else if(sample.search("events")>=0)
            var keyword="events";
          else if(sample.search("rules")>=0)
            var keyword="rules";
          else if(sample.search("holiday")>=0)
            var keyword="holiday";
          else if(sample.search("webkiosk")>=0)
            var keyword = "webkiosk";
          else if(sample.search("hubs")>=0)
            var keyword="hubs";
          else if(sample.search("time")>=0)
            var keyword="time table";
          else if(sample.search("hey")>=0)
            var keyword="hey";
          else if(sample.search("food")>=0)
            var keyword="mess";
          else if(sample.search("hi")>=0)
            var keyword="hi";
          else if(sample.search("hello")>=0)
            var keyword="hello";
          else if(sample.search("jiit128")>=0)
            var keyword="jiit128";
          else{
             $('#kont #backgroundofkont #messages').append('<li class="b">'+$('#kont .text textarea').val()+'</li>');
            $("#kont #backgroundofkont").animate({ scrollTop: 10000 }, "slow");
            $('#kont .text textarea').val('').empty();
            $('#kont #backgroundofkont #messages').append('<li class="a">SORRY....CAN NOT UNDERSTAND...:(</li>');
          }
      $.ajax({
     type: "GET",
     url: 'ajax.php?id='+keyword,
     dataType: "json",
     success: function(data){
         if(data)
         {
           $('#kont #backgroundofkont #messages').append('<li class="b">'+$('#kont .text textarea').val()+'</li>');
    $("#kont #backgroundofkont").animate({ scrollTop: 10000 }, "slow");
          $('#kont .text textarea').val('').empty();   
          $('#kont #backgroundofkont #messages').append('<li class="a">'+data['ans']+'</li>');
          console.log(data['picad']); 
          if(data['picadd'])
          {  
            console.log('data["picadd"]');
          $('#kont #backgroundofkont #messages').append('<li class="a" >'+'<a  href="'+data['picadd']+'" alt="Image description" target="_blank"'+ data['picadd']+'"><img  src=" ' + data['picadd'] + '" style="width:500px;height:200px;" /></a>'+'</li>');
    }$("#kont #backgroundofkont").animate({ scrollTop: 10000 }, "slow");  
         } 
     }
});
       }
  });
  
$('#kont #name').css({
  'position' : 'absolute',
  'left' : '1000px',
  'line-height' : '900px',
  'font-family' : 'verdana',
  'font-weight' : 'bold',
  'color' : 'white'
});

//alert($('#kont #messages li:first').height());

//$('#kont #messages li').css('top', $(this).prev().height()+'px');


$("#kont #backgroundofkont").animate({ scrollTop: 10000 }, "slow");

  $('#kont .send').css('cursor','pointer');
  

   });
