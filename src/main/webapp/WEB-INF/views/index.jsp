
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>KeepNote</title>
</head>
<body>
	<!-- Create a form which will have text boxes for Note ID, title, content and status along with a Send 
		 button. Handle errors like empty fields -->
		 	<form action="/KeepNote-Step1-Boilerplate/saveNote" method="post">
         		Note Id:<br> <input type="text" name="Id"> <br>
         		Title:<br> <input type="text" name="Title"> <br>
         		Content:<br> <input type="text" name="Content"> <br>
         		Status:<br> <input type="text" name="Status"> <br> <br>
         		<input type="submit" value="Submit">
         	</form>


	<!-- display all existing notes in a tabular structure with Id, Title,Content,Status, Created Date and Action -->
	<table cellpadding="20">
    		<tr>
    			<th>Note Id</th>
    			<th>Note Title</th>
    			<th>Note Content</th>
    			<th>Note Status</th>
    			<th>Note Created At</th>
    			<th>Note Action</th>
    		</tr>

    		<c:forEach items="${note}" var="note">
    			<tr>
    				<th><c:out value="${note.noteId}" /></th>
    				<th><c:out value="${note.noteTitle}" /></th>
    				<th><c:out value="${note.noteContent}" /></th>
    				<th><c:out value="${note.getNoteStatus}" /></th>
    				<th><c:out value="${note.getNoteCreatedAt}" /></th>
    				<th><input type="button" value="Delete"></th>
    			</tr>
    		</c:forEach>


    	</table>
</body>
</html>