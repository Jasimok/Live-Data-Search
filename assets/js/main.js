$(document).ready(function(){
    $("#live_search").keyup(function(){
        let input = $(this).val();
        if ( input !== "" ) {
            $.ajax({
                url:"livesearch.php",
                method:"POST",
                data: {
                    sinput:input
                },
                success:function(data) {
                    $(".searchresult").html(data);
                    $(".searchresult").css("display","block");
                }
            });
        }
        else {
            $(".searchresult").css("display","none");
        }
    });
});