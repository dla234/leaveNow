<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Leave now</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>

<script src="resources/js/daypilot/daypilot-all.min.js" type="text/javascript"></script>
<link type="text/css" rel="stylesheet" href="resources/css/themes/areas.css" />    
     
     <!--    
	<link type="text/css" rel="stylesheet" href="resources/css/themes/calendar_transparent.css" />    
	<link type="text/css" rel="stylesheet" href="resources/css/themes/calendar_white.css" />    
	<link type="text/css" rel="stylesheet" href="resources/css/themes/calendar_green.css" />    
    <link type="text/css" rel="stylesheet" href="resources/css/themes/calendar_traditional.css" />
 -->   

<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

</head>
<body>

<div style="float:left; width: 150px;">
    Drag items from this list to the calendar:
    <ul id="external">
        <li data-id="123" data-duration="1800"><span style="cursor:move">Item #123 (30 minutes)</span></li>
        <li data-id="124" data-duration="3600"><span style="cursor:move">Item #124 (60 minutes)</span></li>
    </ul>
</div>
<div style="margin-left: 150px">
    <div id="dp"></div>
    
</div>
<script type="text/javascript">

$(document).ready(function() {

    var $dp = $("#dp").daypilotCalendar({
        startDate: "2017-03-12",
		endDate:"2017-03-30",
        viewType: "Days",
        //scrollToHour: 0,
        days: 2,
        /* 
        columns:[
        	
        	{ name: "2017-03.12", id: "2017-03.12", areas: [{"action":"JavaScript","js":"(function(e) { alert(e.date); })","bottom":1,"w":17,"v":"Hover","html":"<div><div><\/div><\/div>","css":"resource_action_menu","top":0,"right":1}]},
        	{ name: "2017-03.13", id: "2017-03.13", areas: [{"action":"JavaScript","js":"(function(e) { alert(e.date); })","bottom":1,"w":17,"v":"Hover","html":"<div><div><\/div><\/div>","css":"resource_action_menu","top":0,"right":1}]}
        	
        ],
         */
        /* 
        event:[
        	{
        		 start: new DayPilot.Date("2013-03-25T12:00:00"),
                 end: new DayPilot.Date("2013-03-25T13:00:00").addHours(3),
                 id: DayPilot.guid(),
                 text: "Special event"
        	}
        ],
         */
        onEventMoved: function (args) {
        	$dp.message("Moved: " + args.e.text());
            console.log($dp.events.list[0].start.toString());
        },
        onEventResized: function (args) {
        	$dp.message("Resized: " + args.e.text());
        },
        onTimeRangeSelected: function (args) {
        	console.log(args.start);
            var name = prompt("New event name:", "Event");
            if (!name) return;
            var e = new DayPilot.Event({
                start: args.start,
                end: args.end,
                id: DayPilot.guid(),
                resource: args.resource,
                text: name
            });
            $dp.events.add(e);
            $dp.message("Created");
        }
    });
});

function makeDraggable() {
    var parent = document.getElementById("external");
    var items = parent.getElementsByTagName("li");
    for (var i = 0; i < items.length; i++) {
        var e = items[i];
        
        var item = {
            element: e,
            id: e.getAttribute("data-id"),
            text: e.innerText,
            duration: e.getAttribute("data-duration")
        };
        console.log(item);
        DayPilot.Calendar.makeDraggable(item);
    }
}

makeDraggable();
  
/*   
var e = $("#item1");
console.log(e);
var item = {
  element: e,
  id: e.attr("data-id"),
  text: e.innerText,
  duration: e.attr("data-duration")
};
DayPilot.Calendar.makeDraggable(item);

 */
</script>

</body>
</html>

