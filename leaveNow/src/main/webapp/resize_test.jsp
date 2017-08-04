<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta charset="utf-8">
<title>Leave now</title>
<style type="text/css">
/* #box {
    position: relative;
    width: 130px;
    height: 130px;
    background-color: #2196F3;
    color: white;
    display:flex;
    justify-content:center;
    align-items:center;
    border-radius: 10px;
}

#handle {
    background-color: #727272;
    width: 10px;
    height: 10px;
    cursor: se-resize;
    position:absolute;
    right: 0;
    bottom: 0;
} */
/* #box{
	resize: vertical;
	width: 300px;
	 height: 5em;
	 background-color: white;
	 padding: .5em;
	 overflow: auto;
}
body {
  background-color: #1D1F1F;
} */



</style>

<script type="text/javascript">
/* var resizeHandle = document.getElementById('handle');
var box = document.getElementById('box');
resizeHandle.addEventListener('mousedown', initialiseResize, false);

function initialiseResize(e) {
	window.addEventListener('mousemove', startResizing, false);
   	window.addEventListener('mouseup', stopResizing, false);
}

function startResizing(e) {
   box.style.width = (e.clientX - box.offsetLeft) + 'px';
   box.style.height = (e.clientY - box.offsetTop) + 'px';
}
function stopResizing(e) {
    window.removeEventListener('mousemove', startResizing, false);
    window.removeEventListener('mouseup', stopResizing, false);
} */

</script>
</head>




<body>
<div id="box">
    <div>Resize me !</div>
    <div id="handle">
    </div>
</div>
</body>

</html>

