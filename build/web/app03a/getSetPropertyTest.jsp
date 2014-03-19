<%-- 
    Document   : getSetPropertyTest
    Created on : Mar 16, 2014, 1:55:19 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>getProperty and setProperty</title>
    </head>
    <body>
        <jsp:useBean id="employee" class="app03a.Employee" />
        <jsp:setProperty name="employee" property="firstName" value="Abigail" />
        First Name: <jsp:getProperty name="employee" property="firstName" />
    </body>
</html>
