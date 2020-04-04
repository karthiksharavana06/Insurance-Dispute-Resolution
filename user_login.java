/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import Connection.DbConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 *
 * @author trios
 */
@WebServlet(urlPatterns = {"/user_login"})

public class user_login extends HttpServlet {

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
             Connection con=null; 
        Statement st=null;
        DbConnection db1=new DbConnection();
            String uname=request.getParameter("username");
            String upass=request.getParameter("password");           
           String query="select * from user_register where username='"+uname+"' and pswd='"+upass+"'";
        ResultSet i=db1.Select(query);
                if(i.next())
                {
                    
                   
                   session.setAttribute("msg","Successfully Login");
               session.setAttribute("username",uname);
               session.setAttribute("password", upass);
               response.sendRedirect("User_Home.jsp"); 
                    }
            
                
                     else               
                    {
              session.setAttribute("msg","Username & password incorrect !!!!...");
              response.sendRedirect("user.jsp");
                    }
              
            }
        
          catch(Exception e)
        {
            System.out.print("e");
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
