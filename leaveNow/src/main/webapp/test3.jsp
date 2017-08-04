<!doctype html>
<html lang="ko">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>test3</title>
  <link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <style>
  #resizable { width: 150px; height: 150px; padding: 0.5em; }
  #resizable h3 { text-align: center; margin: 0; }
  </style>
  <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
  <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
  <script>
  $( function() {
	    $( "#resizable" ).resizable({
	      containment: "#container",
	      maxWidth: 240,
	      minWidth: 240
	    });
	  } );
  </script>
</head>
<body>
<div id="container" style="width: 260px; height: 500px; background-color: blue;">
<div id="resizable" style="width: 240px; background-color: red;">
  
</div>
</div> 
 
</body>
</html>
