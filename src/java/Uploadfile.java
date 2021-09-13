/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

/**
 *
 * @author anjali
 */
@WebServlet("/upload")
@MultipartConfig
public class Uploadfile extends HttpServlet {
    
    
    String driver = "com.mysql.jdbc.Driver";
    String url = "jdbc:mysql://localhost/cdacpal";
   
    String user = "root";
    String passs = "";

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet Uploadfile</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Uploadfile at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
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
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       
            String coursetype = request.getParameter("coursetype");
          
            
            
            Part input = request.getPart("anytype");
            
            Connection con = null;
            InputStream is = null;
            if((input != null) )
            {
                System.out.println("file name : "+input.getName());
                System.out.println("file size : "+input.getSize());
                System.out.println("file type : "+input.getContentType());
                is  =  input.getInputStream();
                
                
            }
            
         try {    
            Class.forName(driver);
            con = DriverManager.getConnection(url, user,passs);
            String sql = "insert into document values(?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
           // ps.setInt(1, 1);
            ps.setString(1,coursetype);
            PrintWriter pw = response.getWriter();
            
            pw.println("<script type = \"text/javascript\">");
            pw.println("alert('Uploaded Successfully')  ");
            pw.println("location href= 'index_after_login.jsp' ");
            pw.println("</script>");
            
            if(is != null)
            {
                ps.setBlob(2,is);
            }
            int row = ps.executeUpdate();
            
           
            if(row>0)
            {
               
                System.out.println("uploaded successfully");
                
            }
            else
            {
                System.out.println("Not uploaded");
                
            }
            
            
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Uploadfile.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Uploadfile.class.getName()).log(Level.SEVERE, null, ex);
            
   
        }
         finally
         {
             if(con != null)
             {
                 try {
                     con.close();
                 } catch (SQLException ex) {
                     Logger.getLogger(Uploadfile.class.getName()).log(Level.SEVERE, null, ex);
                 }
             }
         }
        
        
        
        
        
        
        
        
        
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
