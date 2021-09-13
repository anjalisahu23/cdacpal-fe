import java.io.FileInputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
 
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
 
/**
 * Servlet implementation class guru_download
 */
@WebServlet("/downloadFileServlet")
public class downloadFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
            try {
                String driver = "com.mysql.jdbc.Driver";
                String url = "jdbc:mysql://localhost/cdacpal";
                String user = "root";
                String passs = "";
                Connection con =null;
                Class.forName(driver);
                con = DriverManager.getConnection(url, user,passs);
                ResultSet rs = null;
                String sql  = "select * from document";
                PreparedStatement ps;
               
                ps = con.prepareStatement(sql);
                
                rs = ps.executeQuery();
            
                response.setContentType("text/html");
                PrintWriter out = response.getWriter();
                String file=" ",path= " " ;
                if(rs.next())
                {
                 file = rs.getString("file");
                }
                 path = "/home/anjali/Documents/Download_files/";
                response.setContentType("APPLICATION/OCTET-STREAM");
                response.setHeader("Content-Disposition", "attachment; filename=\""
                        + file + "\"");
                
                FileInputStream fileInputStream = new FileInputStream(path
                        + file);
                
                int i;
                while ((i = fileInputStream.read()) != -1) {
                    out.write(i);
                }
                fileInputStream.close();
                out.close();
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(downloadFileServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(downloadFileServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
	}
 
 
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}
 
}