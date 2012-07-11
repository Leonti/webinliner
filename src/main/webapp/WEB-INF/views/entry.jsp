<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!doctype html>
<head>
	<title>Main</title>
	<link rel="stylesheet" href="resources/css/entry.css">
<body>
	<form:form method="get" action="result">
		<form:label path="html">Enter html here:</form:label>
		<form:textarea path="html"></form:textarea>
		<form:label path="css">Enter css here:</form:label>
		<form:textarea path="css"></form:textarea>
		
		<input type="submit" value="Inline!">		
	</form:form>
