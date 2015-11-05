$(document).ready(function(){
    $('#typ').blur(function(){
        if($('#typ').val()==""){
            var a=$('#m').html();
            $('#uname').val("");
            $('#msg').html("Please Select Designation"+a);
            $('#msg').slideDown('slow');
        }else{
            $('#msg').html("");
            $('#msg').slideUp('slow');
            var alphaNumerics = "abcdefghijklmnopqrstuvwxyz1234567890";
            var id = "";
            for (var i = 0; i < 5; i++) 
            {
                id+=alphaNumerics.charAt(Math.floor(Math.random() * alphaNumerics.length));
            }
            if($('#typ').val()=="manager"){
                $('#uname').val("P"+id);
            }else if($('#typ').val()=="leader"){
                $('#uname').val("T"+id);
            }else if($('#typ').val()=="member"){
                $('#uname').val("M"+id);
            }
        }
    });  
});

