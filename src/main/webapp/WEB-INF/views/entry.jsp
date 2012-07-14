<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<jsp:include page="common/header.jsp" />
	<div id="content">
	
		<form:form method="get" action="result" class="centered entryForm">
			<form:label path="html">Enter html here:</form:label><br>
			<form:textarea path="html"></form:textarea><br>
			<form:label path="css">Enter css here:</form:label><br>
			<form:textarea path="css"></form:textarea><br><br>
			<form:checkbox path="removeClasses"/>Remove &bdquo;class&ldquo; attributes<br>
			<input type="submit" class="submit" value="Inline!">		
		</form:form>	
	</div>
<jsp:include page="common/footer.jsp" />	
