/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.DB.DB_Operation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author anjali
 */
@WebServlet("/log")
public class login extends HttpServlet {
    String lemail,lpass;

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
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
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
        
         DB_Operation db = new DB_Operation();
            lemail = request.getParameter("email");
            lpass = request.getParameter("pass");
             boolean status = false;
             RequestDispatcher rd = null;
            System.out.println("before ====>1");
             
             if(lemail.isEmpty() || lpass.isEmpty())
             {
                     System.out.println("before if====>2");
                response.sendRedirect("Login.jsp");
             }
             else
             {
               System.out.println("before if====>3");
              
               db.getCon();
               Cookie ck;
               status = db.checkRecords(lemail,lpass);
                 
                if(status)
                {
                   System.out.println("before if====>4");
                   ck = new Cookie("email",lemail);
                   response.addCookie(ck);
                    HttpSession hs = request.getSession();
                    hs.setAttribute("email", lemail);
                  
                   rd = request.getRequestDispatcher("index_after_login.jsp");
                   rd.forward(request, response);
                    
                }
               
                 else
                 {   
                     
                     response.sendRedirect("login.jsp ");
                 }                 
             }            
          db.closeConnection();
         
       
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
