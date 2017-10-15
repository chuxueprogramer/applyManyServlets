<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>a</title>
<script type="text/javascript" src = "${pageContext.request.contextPath }/js/jquery-1.12.1.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						$
								.get(
										"${pageContext.request.contextPath}/servlet/servlet01",
										function(data, status) {
											var content01="<p>data:"+data+"\nstatus:"+status+"</p>";
											$("#div01").append(content01);
										});
						
	  							$.get("${pageContext.request.contextPath}/servlet/servlet02",
									function(data, status) {
	  									var content02="<p>data:"+data+"\nstatus:"+status+"</p>";
	  									$("#div02").append(content02);
									});
						}

	);
</script>
</head>
<body>
	<div id = "div01"></div>
	<div id = "div02"></div>
</body>
</html>