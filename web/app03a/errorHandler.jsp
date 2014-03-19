<%-- 
    Document   : errorHandler
    Created on : Mar 16, 2014, 2:50:22 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Error</title>
    </head>
    <body>
        An error has occurred. <br />
        Error Message:
        <% out.println(exception.toString()); %>
        
    </body>
</html>
