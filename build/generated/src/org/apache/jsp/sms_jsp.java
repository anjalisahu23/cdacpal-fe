package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sms_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("           Bootstrap \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/bootstrap/bootstrap.min.css\">\n");
      out.write("   slick slider \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/slick/slick.css\">\n");
      out.write("   themefy-icon \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/themify-icons/themify-icons.css\">\n");
      out.write("   animation css \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/animate/animate.css\">\n");
      out.write("   aos \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/aos/aos.css\">\n");
      out.write("   venobox popup \n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/venobox/venobox.css\">\n");
      out.write("\n");
      out.write("   Main Stylesheet \n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("  \n");
      out.write("  Favicon\n");
      out.write("  <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("  <link rel=\"icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("      <form action=\"Contact\" method=\"post\">\n");
      out.write("          <input type=\"text\" class=\"form-control mb-3\" id=\"name\" name=\"name\" placeholder=\"Your Name\">\n");
      out.write("          <input type=\"email\" class=\"form-control mb-3\" id=\"mail\" name=\"mail\" placeholder=\"Your Email\">\n");
      out.write("          <input type=\"text\" class=\"form-control mb-3\" id=\"subject\" name=\"subject\" placeholder=\"Subject\">\n");
      out.write("          <textarea name=\"message\" id=\"message\" class=\"form-control mb-3\" placeholder=\"Your Message\"></textarea>\n");
      out.write("          <button type=\"submit\" value=\"send\" class=\"btn btn-primary\">SEND MESSAGE</button>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
