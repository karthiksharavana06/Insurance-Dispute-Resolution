
import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import javax.servlet.http.HttpSession;


@WebServlet("/insurance_claim")
@MultipartConfig(maxFileSize = 16177215)    // upload file's size up to 16MB
public class insurance_claim extends HttpServlet {

    // database connection settings
    private String dbURL = "jdbc:mysql://localhost:3306/road_accident";
    private String dbUser = "root";
    private String dbPass = "admin";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        // gets values of text fields
        HttpSession session=request.getSession(true);

        PrintWriter out = response.getWriter();
       String uname=request.getParameter("username");     
        String insurance = request.getParameter("insurance");
        String policy = request.getParameter("policy");

        InputStream inputStream = null; // input stream of the upload file

        // obtains the upload file part in this multipart request
        Part filePart = request.getPart("reports");
        if (filePart != null) {
            // prints out some information for debugging
            System.out.println(filePart.getName());
            //System.out.println(filePart.getSize());
            System.out.println(filePart.getContentType());
            // obtains input stream of the upload file
            inputStream = filePart.getInputStream();
        }

        Connection conn = null; // connection to the database
        String message = null;  // message will be sent back to client


        try {
            // connects to the database
            DriverManager.registerDriver(new com.mysql.jdbc.Driver());
            conn = DriverManager.getConnection(dbURL, dbUser, dbPass);

            // constructs SQL statement
            String sql = "INSERT INTO insurance_claim( username, insurance, policy, reports) values (?,?,?,?)";
            PreparedStatement statement = conn.prepareStatement(sql);
            statement.setString(1,uname);
            statement.setString(2, insurance);
            statement.setString(3, policy);
           

            if (inputStream != null) {
                // fetches input stream of the upload file for the blob column
                statement.setBlob(4, inputStream);
            }

            // sends the statement to the database server
            int row = statement.executeUpdate();
            if (row > 0) {
            session.setAttribute("msg", "File Uploaded Successfully");
           response.sendRedirect("insurance_claim.jsp");
            }
             
            // sends the statement to the database server
           
        } 
        catch (SQLException ex) {
            message = "ERROR: " + ex.getMessage();
            System.out.println(message);
           //out.println(ex);

            response.sendRedirect("already.jsp");
        }
    }
}