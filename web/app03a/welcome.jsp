<%-- 
    Document   : welcome
    Created on : Mar 16, 2014, 12:48:46 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.DateFormat"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Today's Date</title>
    </head>
    <body>
        <%
            DateFormat dateFormat = DateFormat.getDateInstance(DateFormat.LONG);
            String s = dateFormat.format(new Date());
            out.println("Today is " + s);
        %>
    </body>
</html>
