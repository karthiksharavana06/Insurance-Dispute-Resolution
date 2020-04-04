/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */


import Connection.DbConnection;
import java.io.ByteArrayInputStream;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author selvarani
 */
@WebServlet(urlPatterns = {"/Download"})
public class Download extends HttpServlet {

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
          // String k=request.getParameter("k");
           String id=request.getParameter("id");
       //    DB Db=new DB();
            DbConnection db=new DbConnection();
           ResultSet rs=db.Select("select * from road_location where sno='"+id+"'");
          // System.out.println("Coming"+k);
           if(rs.next())
           {
               try {
                  
byte Content[] = {};
        String filename = "";
        double cost=0.0;
                      ; 
       Content = rs.getBytes("doc");
            filename="FIR_"+id;
 java.util.Date now = new java.util.Date();
                String DATE_FORMAT = "yyyy-MM-dd hh:mm:ss";
                SimpleDateFormat sdf = new SimpleDateFormat(DATE_FORMAT);
                String strDateNew = sdf.format(now);
                System.out.println(strDateNew);

            
        System.out.println("****" + Content.toString());

        byte requestBytes[] = Content;

        ByteArrayInputStream bis = new ByteArrayInputStream(requestBytes);

        response.reset();

        response.setContentType("application/octet-stream");

        response.setHeader("Content-disposition", "attachment; filename=" + new File(filename).getName());

        byte[] buf = new byte[1024];
        int len;
        while ((len = bis.read(buf)) > 0) {

            response.getOutputStream().write(buf, 0, len);

        }

        bis.close();

        response.getOutputStream().flush();
       
 //response.sendRedirect("search.jsp"); 

         
        } catch (Exception e) {

            e.printStackTrace();

        }

           }
           
        }  catch (Exception ex) {
                    ex.printStackTrace();
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
