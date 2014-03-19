<%-- 
    Document   : scriptletTest
    Created on : Mar 16, 2014, 1:39:34 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Scriplet Example</title>
    </head>
    <body>
        <b>Http headers: </b><br />
        <%-- First Scriptlet --%>
        <%
            for (Enumeration<String> e = request.getHeaderNames(); e.hasMoreElements();){
                String header = e.nextElement();
                out.println(header + ": " + request.getHeader(header) + "<br />");
            }
            String message = "Thank you";
        %>
        <hr />
        <%-- Second Scriptlet --%>
        <%
            out.println(message);
        %>
        <br />
        Today is <%=java.util.Calendar.getInstance().getTime()%>
    </body>
</html>
