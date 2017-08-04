<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

<style>
.node_LR_width_x {width:500px; height:400px; position:relative;}

.node_LR_width_x #LR_width_x_1 {
    width:250px; 
    height:400px;
    overflow:hidden; 
    position:absolute;
    border-right:3px solid black;
}
#test1{
	background-color: red;
	
}

                    
</style>
 
<script>
$(function(){
// 여기가 실질적인 기술
    $("#test1").resizable({
        handles : 's'	,
        minHeight : $("#test1").parent().height(),
        
        
        stop:function(event,ui){
        	console.log(ui);
        	alert(event.target.id);
        }
    });
    
    $( "#test1" ).draggable({
    	helper:"clone"
    });
    
    $( "td" ).droppable({
    	
    
    	drop:function(event, ui ){
    		 $(ui.draggable).clone();
            
    	}
    });
    
})
</script>
 
<body>
<div class="container">
	<div class ="row">
		<div class="col-md-12">
			<table class="talbe table-bordered" >
			<thead>
				<tr><td>time</td><td>day1</td><td>day1</td><td>day1</td><td>day1</td><td>day1</td><td>day1</td><tr>
			</thead>
			<tbody>
				<tr><td>1</td><td id="test2"></td><td></td><td></td><td></td><td></td><td></td><tr>
				<tr><td>2</td><td></td><td></td><td></td><td></td><td></td><td></td><tr>
				<tr><td>3</td><td></td><td></td><td></td><td></td><td></td><td></td><tr>
				<tr><td>4</td><td></td><td></td><td></td><td></td><td></td><td></td><tr>
				<tr><td>5</td><td></td><td></td><td></td><td></td><td></td><td></td><tr>
				<tr><td>6</td><td></td><td></td><td></td><td></td><td></td><td></td><tr>
				<tr><td>7</td><td></td><td></td><td></td><td></td><td></td><td></td><tr>
			</tbody>
			
			</table>
		</div>
	</div>
	<div class="row">
		<div id="test1"> 늘리기 예제</div>
	</div>
</div>




</body>
</html>

