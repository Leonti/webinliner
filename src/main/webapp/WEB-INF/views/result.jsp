<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!doctype html>
<head>
	<title>Inlined html result</title>
	<link rel="stylesheet" href="resources/css/result.css">
<body>
	<h1>Resulting html</h1>
	
	<p>  The time on the server is ${serverTime}. </p>
	<textarea>${html}</textarea>