<%-- 
    Document   : employee
    Created on : Mar 23, 2014, 1:37:30 PM
    Author     : Dan Cannon
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Employee</title>
    </head>
    <body>
        accept-language: ${header['accept-language']}
        <br />
        session id: ${pageContext.session.id}
        <br />
        employee: ${requestScope.employee.name}, ${employee.address.city}
        <br />
        capital: ${capitals["Canada"]}
    </body>
</html>
