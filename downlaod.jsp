<%@page import="javax.imageio.ImageIO"%>
<%@page import="java.awt.image.BufferedImage"%>
<%@ page import="java.sql.*,java.io.*,java.util.*" %> 

<%



String connectionURL = "jdbc:mysql://mysql148111-ams-edu.j.layershift.co.uk/sharing_image";

if(request.getParameter("name")!=null && request.getParameter("name")!="")

{

  int id =  Integer.parseInt(request.getParameter("name"));



  String filename = "image"+id+".jpg";

  Connection con=null;

  try{  

  Class.forName("com.mysql.jdbc.Driver").newInstance();

  con=DriverManager.getConnection(connectionURL,"root","CHRxvt61508");  

  Statement st1=con.createStatement();

  String strQuery = "select * from user_file_details where S_No="+id;

  

  ResultSet rs1 = st1.executeQuery(strQuery);

  



  rs1 = st1.executeQuery(strQuery);

  if(rs1.next()){

  int len = 4096;
filename=rs1.getString("Filename");
 String path = request.getSession().getServletContext().getRealPath("/");
             String path1=path.replace("build", "");
               System.out.println(path);
              
               String strPath = path1+"Source_Image/"+filename;
BufferedImage originalImage =
                              ImageIO.read(new File(strPath));

	ByteArrayOutputStream baos = new ByteArrayOutputStream();
	ImageIO.write( originalImage, "jpg", baos );
	baos.flush();
	byte[] imageInByte = baos.toByteArray();

 // byte [] rb = new byte[len];

  InputStream readImg = rs1.getBinaryStream("image");

  //int index=readImg.read(rb, 0, len);  

  st1.close();

  response.reset();

  response.setContentType("image/png");

  response.setHeader("Content-disposition","attachment; filename=" +filename);

  response.getOutputStream().write(imageInByte,0,len); 

  response.getOutputStream().flush();  

  }

  }

  catch (Exception e){

  e.printStackTrace();

  }

}

%>