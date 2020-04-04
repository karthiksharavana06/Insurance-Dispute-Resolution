/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.net.InetAddress;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Iterator;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 *
 * @author admin
 */
@WebServlet(urlPatterns = {"/UpdateAccident1"})
public class UpdateAccident1 extends HttpServlet {
    private String saveFile_1;

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(true);
        try {
          String location="",latitude="",longitude="",date="",time="",vehicle="";
           String Index1="";
           String desc="";
           StringBuffer sd=new StringBuffer();
           String saveFile="",saveFile1="",saveFile2="",sn="",un="";
            int fileidnum=0,downloadcount=0,vc=0;
            sn=(String)session.getAttribute("Sn");
            un=(String)session.getAttribute("un");
            String contentType = request.getContentType();
            // Create a factory for disk-based file items
            DiskFileItemFactory factory = new DiskFileItemFactory();

// Set factory constraints
            factory.setSizeThreshold(4012);
//factory.setRepository("c:");
              ServletFileUpload upload = new ServletFileUpload(factory);
List items = null;
try{
    items = upload.parseRequest(request);
}
      catch (FileUploadException e) {
                e.printStackTrace();
            }
           byte[] data = null;
            byte[] data1 = null; 
            byte[] data2= null;
            String fileName = null;
            String fileName1 = null;
            String fileName2 = null;
            Iterator iter = items.iterator();

            try {
                    DbConnection Db=new DbConnection();
                 
              int id=0;
                      ResultSet rs=Db.Select("select max(sno) from road_location1");
                      if(rs.next())
                           {
                          id=rs.getInt(1);
                      }
                      id=id+1;
            while (iter.hasNext()) {
                FileItem item = (FileItem) iter.next();
                 if (item.isFormField()) {
                    //processFormField(item);

                    String name = item.getFieldName();
                    System.out.println(name);
                    String value = item.getString();
                    if(name.equals("location"))
                    {
                        location=value;
                        System.out.println(location);
                        
                    }
                    else if(name.equals("latitude"))
                    {
                        latitude=value;
                        System.out.println("latitude");
           }
                    else if(name.equals("longitude"))
                    {
                        longitude=value;
                        System.out.println("longitude");
                        
                    }
                    else if(name.equals("date"))
                    {
                        date=value;
                        System.out.println("date");
                    }
                    else if(name.equals("time"))
                    {
                        time=value;
                        System.out.println("time");
                    }
                    else if(name.equals("vehicle"))
                    {
                        vehicle=value;
                        System.out.println("vehicle");
                    }
        } else {
                    data = item.get();
                    data1=item.get();
                    data2=item.get();
                   String filename=item.getFieldName();
                   System.out.println("filedname"+filename);
                   if(filename.equalsIgnoreCase("image"))
                   {
                      fileName = item.getName(); 
                         String extension = "";

int i = fileName.lastIndexOf('.');
if (i > 0) {
    extension = fileName.substring(i+1);
}

               
System.out.println("--"+extension);
            saveFile =id+""+ fileName;
           
            
             String path = request.getSession().getServletContext().getRealPath("/");
             String path1=path.replace("build", "");
               System.out.println(path);
                 String strPath = path1+"Server_Images\\"+saveFile;
    System.out.println(strPath);
            File ff = new File(strPath);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(data, 0, data.length);
            fileOut.flush();
            fileOut.close();
            
            saveFile_1=strPath;
            //System.out.println(strPath);
                   }
                   
                   if(filename.equalsIgnoreCase("image1"))
                   {
                       fileName = item.getName();  
                       
                        fileName = item.getName(); 
                         String extension = "";

int i = fileName.lastIndexOf('.');
if (i > 0) {
    extension = fileName.substring(i+1);
}

               
System.out.println("--"+extension);
            saveFile =id+""+ fileName;
           
            
             String path = request.getSession().getServletContext().getRealPath("/");
             String path1=path.replace("build", "");
               System.out.println(path);
                 String strPath = path1+"Server_Images\\"+saveFile;
    System.out.println(strPath);
            File ff = new File(strPath);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(data, 0, data.length);
            fileOut.flush();
            fileOut.close();
            
            saveFile1=strPath;
                   }
                   
                   if(filename.equalsIgnoreCase("document"))
                   {
                     fileName = item.getName();  
                      fileName = item.getName(); 
                         String extension = "";

int i = fileName.lastIndexOf('.');
if (i > 0) {
    extension = fileName.substring(i+1);
}

               
System.out.println("--"+extension);
            saveFile =id+""+ fileName;
           fileName2=saveFile;
            
             String path = request.getSession().getServletContext().getRealPath("/");
             String path1=path.replace("build", "");
               System.out.println(path);
                 String strPath = path1+"Server_Images\\"+saveFile;
    System.out.println(strPath);
            File ff = new File(strPath);
            FileOutputStream fileOut = new FileOutputStream(ff);
            fileOut.write(data, 0, data.length);
            fileOut.flush();
            fileOut.close();
            
            saveFile2=strPath;
                   }
                   
                  
                    
                }
            }
          
            System.out.println("Thrid");
            Connection con = null;
            PreparedStatement psmnt = null;
            FileInputStream fis,fis1,fis2;
            InputStream sImage;
           
                java.util.Date now = new java.util.Date();
                String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
                SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
                String strDateNew = sdf.format(now);
                System.out.println(strDateNew);
                String ip1=InetAddress.getLocalHost().getHostAddress();
                 File f = new File(saveFile_1);
                 File f1 = new File(saveFile1);
                 System.out.println("file apth"+saveFile2);
                 System.out.println("file apth"+saveFile1);
                 System.out.println("file apth"+saveFile);
                 File f2 = new File(saveFile2);
                 //.sleep(100000);
                      con=Db.con; 
                int id1=id;
       String queryString = "insert into road_location1(sno,loc,lat,lon,date,time,vehicle,pic,filename,image,doc,docfilename,sts) values(?,?,?,?,?,?,?,?,?,?,?,?,'null')";
         System.out.println("four" + un);
                                                                psmnt = con.prepareStatement(queryString);
                                                               fis = new FileInputStream(f);
                                                               fis1 = new FileInputStream(f1);
                                                               //Thread.sleep(10000000);
                                                               fis2 = new FileInputStream(f2);
                                                               psmnt.setInt(1,id1);
                                                               psmnt.setString(2,location);
                                                               psmnt.setString(3,latitude);
                                                               psmnt.setString(4,longitude);
                                                               psmnt.setString(5,date);
                                                               psmnt.setString(6,time);
                                                               psmnt.setString(7,vehicle);
                                                                psmnt.setBinaryStream(8, (InputStream) fis, (int) (f.length()));
                                                                psmnt.setString(9,saveFile);
                                                                 psmnt.setBinaryStream(10, (InputStream) fis1, (int) (f1.length()));
                                                                 psmnt.setBinaryStream(11, (InputStream) fis2, (int) (f2.length()));
                                                                psmnt.setString(12, (String)session.getAttribute("username"));
                                                                int s = psmnt.executeUpdate();
                                                                int Flength=0,Dcount=0;
                                                             if(s>0)
                                                             {
                                                                 response.sendRedirect("Report_Update.jsp");
                                                             }
                                                               else
                                                             {
                                                                 response.sendRedirect("Report_Update.jsp");
                                                             }
                         } catch (Exception ex) {
                    System.out.println(ex);
                }
            } catch (Exception e) {
              
                System.out.println(e);
            }
                                                               
       
       finally {            
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
