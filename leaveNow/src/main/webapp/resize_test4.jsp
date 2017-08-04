<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
 
<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css" />
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 <script src="http://www.google.com/jsapi" type="text/javascript"></script>
	



<style>
body {
	  text-align: center;
}
#wrapper {
	  text-align: left;
	  width: 720px;
	  margin-left: auto;
	  margin-right: auto;
}

#options{
	width: 200px;
	height:550px;
	border:1px solid black;
	float:left;
}

#frame{
	width:513px;
	height:550px;
	background-repeat: repeat-y;
    	background-position: 0 0;
    	border:1px solid black;
    	float:right;
}

#tbldevs{
	border:1px solid black;
	width:80%;
	margin-left:50px;
	margin-top:10px;
}

#tbldevs th{
	text-align:center;
	height:50px;
	width:50px;
}

#tbldevs td{
	height:50px;
}


#drag1 {
	margin-left:15px;
	margin-top:15px;
	width:32px;
	height:32px;
	background-color: gray;
}

#drag2 {
	margin-left:15px;
	margin-top:15px;
	width:32px;
	height:32px;
	background-color: gray;
}

#drag3 {
	margin-left:15px;
	margin-top:15px;
	width:32px;
	height:32px;
	background-color: gray;
}

#drag4 {
	margin-left:15px;
	margin-top:15px;
	width:32px;
	height:32px;
	background-color: gray;
}

#drag5 {
	margin-left:15px;
	margin-top:15px;
	width:32px;
	height:32px;
	background-color: gray;
}

#drag6 {
	margin-left:15px;
	margin-top:15px;
	width:32px;
	height:32px;
	background-color: gray;
}

.ui-draggable-helperMoving {
	border: 1px dotted #000;
	padding: 6px;
	background: #fff;
	font-size: 1.2em;
	width:100px;
	height:100px;
}

.ui-draggable-helperStoped {
	border: 1px solid #000;
	width:5px;
	height:5px;
}



/* classes for dragged stuff */
.dragged1 {
	position:absolute; 
	width:32px;
	height:32px;
	background-color: skyblue;
}

.dragged2 {
	position:absolute; 
	width:32px;
	height:32px;
	background-color: skyblue;
}

.dragged3 {
	position:absolute; 
	width:32px;
	height:32px;
	background-color: skyblue;
}

.dragged4 {
	position:absolute; 
	width:32px;
	height:32px;
	background-color: skyblue;
}

.dragged5 {
	position:absolute; 
	width:32px;
	height:32px;
	background-color: skyblue;
}

.dragged6 {
	position:absolute; 
	width:32px;
	height:32px;
	background-color: skyblue;
}
.clone{
	background-color: skyblue;
}

#clone{
	background-color: skyblue;
}
#element{
	border:1px solid red
}
                    
</style>
 
<script type="text/javascript">
    $(document).ready(function(){
        //Counter
        counter = 0;
        //Make element draggable
        $(".drag").draggable({
            helper:'clone',
            containment: 'table',

            //When first dragged
            stop:function(ev, ui) {
            	var pos=$(ui.helper).offset();
            	objName = "#clone";
            	
            	$(objName).css({"left":pos.left,"top":pos.top});
            	$(objName).removeClass("drag");

               	//When an existiung object is dragged
                $("#test").draggable({
                	containment: 'table',
                    stop:function(ev, ui) {
                    	var pos=$(ui.helper).offset();
                    	console.log($(this).attr("id"));
						console.log(pos.left)
                        console.log(pos.top)
                    }
                });
               	
               
            }
        });
        //Make element droppable
        $("td").droppable({
			drop: function(ev, ui) {
				
				//console.log(ui.draggable.attr('id'));
				/* if (ui.helper.attr('id').search(/drag[0-9]/) != -1){
					counter++;
					var element=ui.draggable.clone();
					element.addClass("tempclass");
					$(this).append(element);
					$(".tempclass").attr("id","clonediv"+counter);
					$("#clonediv"+counter).removeClass("tempclass");

					//Get the dynamically item id
					draggedNumber = ui.helper.attr('id').search(/drag([0-9])/)
					itemDragged = "dragged" + RegExp.$1;
					console.log(itemDragged);

					$("#clonediv"+counter).addClass(itemDragged);
				} */
				
				var element=ui.draggable.attr('id');
				
				if(element != "test"){
					//var newClone=$(ui.helper).clone(true);
					//var newClone1=ui.draggable.clone(true);
					
					var nodeCopy = document.getElementById(element).cloneNode(true);
					nodeCopy.id="test";
					//console.log("drop:"+newClone.html());
					//console.log("drop:"+ui.draggable);
					//console.log("drop:"+newClone1);
					//console.log("drop:"+element);
					console.log(ev.target);
					
					
					//ev.target.append(newClone);
					//ev.target.append(newClone1);
					//element.attr("id","clone");	
					//element.addClass("clone");
					ev.target.appendChild(nodeCopy);
					$("#"+nodeCopy.id).css("background-color","skyblue");
					$("#"+nodeCopy.id).height("98%");
					//$("#"+nodeCopy.id).hegiht(ev.target.hegiht);
					//$("#"+nodeCopy.id).addClass("test");
					//console.log("drop:"+element);
				}//if end
				
				//$("#"+nodeCopy.id).css("background-color","skyblue");
        	}
        });
    });

	</script>
 
<body>
<div id="wrapper">
  <div id="options">
    <div id="drag1" class="drag">1
    </div>
    <!-- end of drag1 -->
    <div id="drag2" class="drag">2
    </div>
    <!-- end of drag2 -->
    <div id="drag3" class="drag">3
    </div>
    <!-- end of drag3 -->
    <div id="drag4" class="drag">4
    </div>
    <!-- end of drag4 -->
    <div id="drag5" class="drag">5
    </div>
    <!-- end of drag5 -->
    <div id="drag6" class="drag">6
    </div>
    <!-- end of drag6 -->
  </div>
  <!-- end of options -->
  <div id="frame">
    <span id="title">
    
      What do you know?
    
    </span>
    <table id="tbldevs" border="1">
      <thead>
        <tr>
          <th>
            <span id="names">John</span>
          </th>
          <th>
            <span id="names">Paul</span>
          </th>
          <th>
            <span id="names">George</span>
          </th>
          <th>
            <span id="names">Ringo</span>
          </th>
        </tr>
      </thead>
      <tbody>
        <tr>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
        </tr>
        <tr>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
          <td>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <!-- end of frame -->
</div>
<!-- end of wrapper -->
</body>
</html>

