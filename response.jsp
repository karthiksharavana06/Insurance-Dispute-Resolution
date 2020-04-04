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
    String names = request.getParameter("p_name");
    System.out.println("names");
    
    DbConnection db1 = new DbConnection();
            String queryx = "update road_accident.view_report  set status='yes' where p_name='"+names+"'";
  System.out.println(queryx);
            int x = db1.Update(queryx);
    
    session.setAttribute("msg", "Assigned Successfully ");
 response.sendRedirect("request.jsp");
%> 
    </body>
</html>

