<%-- 
    Document   : implicitObjects
    Created on : Mar 16, 2014, 12:54:30 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.Enumeration"%>
<!DOCTYPE html>
<html>
    <head>
        <title>JSP Implicit Objects</title>
    </head>
    <body>
        <b>Http headers:</b><br />
        <%
            for (Enumeration<String> e = request.getHeaderNames(); e.hasMoreElements();){
                String header = e.nextElement();
                out.println(header + ": " + request.getHeader(header) + "<br />");
            }
        %>
        <hr />
        <%
            out.println("Buffer size: " + response.getBufferSize() + "<br />");
            out.println("Session id: " + session.getId() + "<br />");
            out.println("Servlet name: " + config.getServletName() + "<br />");
            out.println("Server info: " + application.getServerInfo());
        %>
    </body>
</html>
