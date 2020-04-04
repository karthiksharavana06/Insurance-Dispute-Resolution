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
@WebServlet(urlPatterns = {"/user_register"})
public class user_register extends HttpServlet {

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
        
        String fname = request.getParameter("firstname");
        String lname = request.getParameter("lastname");
        String uname = request.getParameter("username");
        String pswd = request.getParameter("password");
        String gmail = request.getParameter("gmail");
        String phone = request.getParameter("contact");
        String locale = request.getParameter("location");
        String pic = request.getParameter("image");
        String Aadhar = request.getParameter("aadhar");
        String Nominee = request.getParameter("nominee_name");
        String Nominee_Aadhar = request.getParameter("nominee_aadhar");

        rf=db.Select("select username,gmail from user_register where username='"+uname+"'||gmail='"+gmail+"'");
        if(rf.next())
        {
            session.setAttribute("email", gmail);
            session.setAttribute("msg", "UserName Already Registered");
            response.sendRedirect("user_registration.jsp");
        }
        else
        {
       
        String query="insert into user_register(fname, lname, username, pswd, gmail, phone, locale, pic, sts, sts1,aadhar,nominee,nominee_id) values ('"+fname+"','"+lname+"','"+uname+"','"+ pswd+"','"+gmail+"','"+phone+"','"+locale+"','"+pic+"','No','No','"+Aadhar+"','"+Nominee+"','"+Nominee_Aadhar+"')";
        System.out.println(query);
        int i=db.Insert(query);
        if (i > 0) 
            
            
           {
            session.setAttribute("msg", "Successfully Registered");
            response.sendRedirect("user.jsp");
           }
        else 
            {
              session.setAttribute("msg", "Invalid detail");
             response.sendRedirect("user_registration.jsp");
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
