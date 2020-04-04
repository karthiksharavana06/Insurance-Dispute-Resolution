
<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            Blob image = null;
Connection con=null;
byte[ ] imgData = null ;

         try
      {
          String id=request.getParameter("id");
    Class.forName("com.mysql.jdbc.Driver");
     con=DriverManager.getConnection("jdbc:mysql://localhost:3306/road_accident", "root", "admin");
     String sql="select image from road_location where sno='"+id+"'";
     PreparedStatement ps=con.prepareStatement(sql);
     ResultSet rs=ps.executeQuery();
     if(rs.next())
     {
         image=rs.getBlob(1);
       imgData = image.getBytes(1,(int)image.length());
     }
     else
     {
         out.println("Display Blob Example");
         out.println("");
         return;
     }
     response.setContentType("image/jpg");
      OutputStream o = response.getOutputStream();
      o.write(imgData);
      o.flush();
      o.close();
}
   
catch (Exception e) {
out.println("Unable To Display image");
out.println("Image Display Error=" + e.getMessage());
return;
}  finally{
             out.close();
             
        }
        %>
    </body>
</html>
