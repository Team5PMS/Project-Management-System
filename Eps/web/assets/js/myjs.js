$(document).ready(function(){
    $('#logForm').submit(function(){
        if($('#uname').val()==""||$('#pass').val()==""||$('#typ').val()==""){
            $('#msg').slideDown('slow');
            return false;
        }
    });
    
    $('#clse').click(function(){
        $('#msg').slideUp('slow');
    });
});
