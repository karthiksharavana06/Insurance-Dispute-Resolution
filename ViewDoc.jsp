
<%@page import="java.io.File"%>
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
            String paths = request.getSession().getServletContext().getRealPath("/");
               System.out.println(paths);
               String path1=paths.replace("build", "");
               String strPath = path1+"Server_Images";
               System.out.println(strPath);
File folder = new File(strPath);
File[] listOfFiles = folder.listFiles();
for (int i = 0; i < listOfFiles.length; i++) {
  File file = listOfFiles[i];
  if (file.isFile()){
    //  out.println(file.getName());
    String filename=file.getName();
    String id1=filename.substring(0,1);
   // System.out.println(id1);
       //File file4 = new File(path);
    if(id.equalsIgnoreCase(id1))
    {
       //String [] exe=filename.split(".");
       int len=filename.length();
       String exe=filename.substring(len-3,len);
      if(exe.equals("txt")||exe.equals("doc"))
      {
          response.sendRedirect("Download?id="+id+"&k="+filename);
      }
    }
  }
}
            %>
    </body>
</html>
