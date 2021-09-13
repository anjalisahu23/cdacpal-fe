/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.DB.DB_Operation;
import com.pojo.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.AnnotationConfiguration;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author anjali
 */
@WebServlet("/Reg")
public class Reg extends HttpServlet {

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
            out.println("<title>Servlet Reg</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet Reg at " + request.getContextPath() + "</h1>");
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
       boolean status = false;
        String name = (request.getParameter("name"));
        String course = request.getParameter("course");
        String dob = request.getParameter("dob");
        String gender  = request.getParameter("gender");
        String email = request.getParameter("email");
        String pass  = request.getParameter("pass");
        String conpass  = request.getParameter("conpass");
        String mobile  = request.getParameter("mobile");
        String address = request.getParameter("address");
        RequestDispatcher rd = null;
        
        if(name.isEmpty() || course.isEmpty() || dob.isEmpty() || gender.isEmpty() || email.isEmpty() || pass.isEmpty() || conpass.isEmpty() || mobile.isEmpty() || address.isEmpty() )
        {
            System.out.println("Empty--------->");
            response.sendRedirect("index.html");
        }
        else
        {
            
            DB_Operation db = new DB_Operation();
            db.getCon();
           status = db.insertRecord(name,course,dob,gender,email,pass,conpass,mobile,address);
            if(status)
            {
                System.out.println("Registered successfully");
                
                PrintWriter out = response.getWriter();
                
                response.setContentType("text/html");  
                out.println("<script type=\"text/javascript\">");  
                out.println("alert('Registered Successfull');");
                out.println("location.href= 'index_after_login.jsp'  ");
                out.println("</script>");       
                //out.println("alert('Registered Successfull')");
             /*  try
               {
                   Thread.sleep(3000);
               }
               catch(Exception ex)
                       {
                           
                       }
                
               rd = request.getRequestDispatcher("index_after_login.jsp");
                rd.forward(request, response);
            }
            else
            {
                System.out.println("Not inserted");
                response.sendRedirect("index.html");
            }
            
            */
        }

    }
   

    
    }
}
