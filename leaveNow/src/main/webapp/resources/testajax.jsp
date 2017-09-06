<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>blank.jsp</title>
</head>
<body>
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.4/jquery.js"></script> 
<script>
    /*$.getJSON("json/map.json", function(data) {
        console.log(data);
    });*/

    /*$.getJSON("http://172.16.4.23:9090/trip/local/keyword.do", function(data) {
        console.log(data);
    });*/

    $.ajax({
        url:'http://172.16.4.23:9090/trip/local/keyword.do',//요청URL
        type : "GET",
       /* data:{apikey:'57e5241a10a46db9a55a94bc5c2cf676',query:'카카오프렌즈'}, //서버쪽에 전달할 데이터*/
        /* dataType:'jsonp',
        jsonp : "callback", */
        dataType:'json',
        success:function(data){
            //$('body').append(data);
            console.log(data);
        },
        error:function(e){
            alert(e);
            console.log(e);
        }
    });


</script>
</body>
</html>