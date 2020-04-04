
<%@page import="Connection.DbConnection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("id");
            String doc=request.getParameter("status");
             // String loc=request.getParameter("loc");
            DbConnection db=new  DbConnection();
            db.Insert("update doc_request set status='"+doc+"' where id='"+id+"'");
            response.sendRedirect("accident_update.jsp");
            %>
    </body>
</html>
