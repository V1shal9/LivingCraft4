<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ include file="header.jsp" %>

 <div class="main" align="center">
      <div class="one" > 
        <div class="register">
        <table align="center">
<form method="POST" action="perform_login">
    <div class="form-group row" >
   
<input type="text" name="userName" class="col-sm-2 col-form-label" class="form-control" placeholder="type username" autofocus="autofocus">
<input type="password" name="userPassword" class="col-sm-2 col-form-label" class="form-control" placeholder="type password">
</div>
<div class="offset-sm-2 col-sm-10">
<input type="submit" value="login" class="btn btn-primary" class="button">
</div>
</form></table>
</div></div></div>

<br>
<br>

<br>

<br>
<br>
<br>
<br>

<%@include file="footer.jsp" %>
