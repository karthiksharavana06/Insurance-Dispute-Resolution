/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author suganya
 */
@WebServlet(urlPatterns = {"/doctor_registration"})
public class doctor_registration extends HttpServlet {

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
            DbConnection db=new DbConnection();
            ResultSet rf=null;
        
        String h_id = request.getParameter("hosp_id");
        String h_name = request.getParameter("hos_name");
        String d_id = request.getParameter("d_id");
        String doc_name = request.getParameter("d_name");
        String gmail = request.getParameter("gmail");
        String qual = request.getParameter("qualification");
        String nation = request.getParameter("nation");
        String image = request.getParameter("image");

        rf=db.Select("select doc_name,gmail from doctor_register where doc_name='"+doc_name+"'||gmail='"+gmail+"'");
        if(rf.next())
        {
            session.setAttribute("email", gmail);
            session.setAttribute("msg", "DoctorName Already Registered");
            response.sendRedirect("doctor_registration.jsp");
        }
        else
        {
       
        String query="insert into doctor_register(h_id,h_name,d_id,doc_name,gmail,qual,nation,image) values ('"+h_id+"','"+h_name+"','"+d_id+"','"+ doc_name+"','"+gmail+"','"+qual+"','"+nation+"','"+image+"')";
        System.out.println(query);
        int i=db.Insert(query);
        if (i > 0) 
            
            
           {
            session.setAttribute("msg", "Successfully Registered");
            response.sendRedirect("doctor.jsp");
           }
        else 
            {
              session.setAttribute("msg", "Invalid detail");
             response.sendRedirect("doctor_registration.jsp");
           }
       }
   }
        catch(Exception e)
        {
            out.println(e);
        }
        
      finally 
        {            
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
