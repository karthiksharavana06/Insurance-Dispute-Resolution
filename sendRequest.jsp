
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
            String doc=request.getParameter("docname");
              String loc=request.getParameter("loc");
            DbConnection db=new  DbConnection();
            db.Insert("insert into doc_request (acc_id,user_name,police_name,status) values('"+id+"','"+loc+"','"+doc+"','Pending')");
            response.sendRedirect("search1.jsp?search="+loc);
            %>
    </body>
</html>
