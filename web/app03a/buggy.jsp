<%-- 
    Document   : buggy
    Created on : Mar 16, 2014, 2:52:09 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="errorHandler.jsp"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Exception</title>
    </head>
    <body>
        Deliberately throw an exception
        <% Integer.parseInt("Throw me"); %>
    </body>
</html>
