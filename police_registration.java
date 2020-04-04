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
@WebServlet(urlPatterns = {"/police_registration"})
public class police_registration extends HttpServlet {

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
        
        String id = request.getParameter("d_id");
        String d_name = request.getParameter("d_name");
        String si_name = request.getParameter("si_name");
       String gmail = request.getParameter("gmail");
        String address = request.getParameter("address");
        String area = request.getParameter("area");
        String contact = request.getParameter("contact");
        String image = request.getParameter("image");

        rf=db.Select("select email,si_name from police_register where email='"+gmail+"' || si_name='"+si_name+"' ");
        if(rf.next())
        {
            session.setAttribute("iid",id );
            session.setAttribute("msg", "UserName Already Registered");
            response.sendRedirect("police_registration.jsp");
        }
        else
        {
       
        String query="insert into police_register(iid,d_name,si_name,email,address,area,contact,image) values ('"+id+"','"+d_name+"','"+si_name+"','"+gmail+"','"+ address+"','"+area+"','"+contact+"','"+image+"')";
        System.out.println(query);
        int i=db.Insert(query);
        if (i > 0) 
            
            
           {
            session.setAttribute("msg", "Successfully Registered");
            session.setAttribute("police_id",id);
            session.setAttribute("email",gmail);

            //response.sendRedirect("mail?id: " +id+ " & names:" +gmail);
            response.sendRedirect("police.jsp");
           }
        else 
            {
              session.setAttribute("msg", "Invalid detail");
             response.sendRedirect("police_registration.jsp");
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
