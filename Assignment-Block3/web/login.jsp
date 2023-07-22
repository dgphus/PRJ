<%-- 
    Document   : login
    Created on : Apr 23, 2023, 3:20:26 PM
    Author     : ROG STRIX
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="css/login.css" rel="stylesheet" />
<div class="wrapper fadeInDown">
  <div id="formContent">
    <!-- Tabs Titles -->
    <h2 class="active"> Sign In </h2>

    <!-- Icon -->

    <!-- Login Form -->
    <form>
      <input type="text" id="login" class="fadeIn second" name="tentk" placeholder="login">
      <input type="text" id="password" class="fadeIn third" name="matkhau" placeholder="password">
      <input type="submit" class="fadeIn fourth" value="Log In">
    </form>

    <!-- Remind Passowrd -->
    <%--<div id="formFooter">
      <a class="underlineHover" href="#">Forgot Password?</a>
    </div>--%>

  </div>
</div>
