
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css" href="https://bootswatch.com/_assets/css/custom.min.css">
<title>ADD DATA</title>
<script>
var string="data saved succussfully";
var arr =string.split('');
var index=0;

function animation(){
	 if(index<arr.length){
		 var shif= arr.shift();
		 document.getElementById('text').innerHTML="<ol class='breadcrumb'><li class='breadcrumb-item active'><p class='text-success'>DATA saved</p></li></ol>";
	 }else{
		 document.getElementById('text').innerHTML="<ol class='breadcrumb'><li class='breadcrumb-item active'><p class='text-danger'>ADD NEW DATA</p></li></ol>"; 
	 }
}

var timer=setInterval(animation,50);


/* window.alert("data saved succussfully"); */
</script>
</head>



<body>
<h1 id="text" align="center"></h1>



<div class="bs-docs-section">
<div class="row">
<div class="col-lg-12">
<div class="bs-component">
</div>
</div>
</div>
</div>

<jsp:include page="index.jsp"/>


</body>
</html>