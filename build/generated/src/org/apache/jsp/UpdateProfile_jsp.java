package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import javapapers.java.social.facebook.FBConnection;

public final class UpdateProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");

	FBConnection fbConnection = new FBConnection();

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">\n");
      out.write("        <script src=\"//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\"></script>\n");
      out.write("        <script src=\"https://apis.google.com/js/platform.js\"  defer></script>\n");
      out.write("        <meta name=\"google-signin-scope\" content=\"profile email\">\n");
      out.write("        <meta name=\"google-signin-client_id\"\n");
      out.write("     content=\"536466055968-d0ptk0e0dhjfm06et254e7k5kgejj2t6.apps.googleusercontent.com\">\n");
      out.write("        \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"plugins/bootstrap/bootstrap.min.css\">\n");
      out.write("  <!-- slick slider -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/slick/slick.css\">\n");
      out.write("  <!-- themefy-icon -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/themify-icons/themify-icons.css\">\n");
      out.write("  <!-- animation css -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/animate/animate.css\">\n");
      out.write("  <!-- aos -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/aos/aos.css\">\n");
      out.write("  <!-- venobox popup -->\n");
      out.write("  <link rel=\"stylesheet\" href=\"plugins/venobox/venobox.css\">\n");
      out.write("\n");
      out.write("  <!-- Main Stylesheet -->\n");
      out.write("  <link href=\"css/style.css\" rel=\"stylesheet\">\n");
      out.write("  \n");
      out.write("  <!--Favicon-->\n");
      out.write("  <link rel=\"shortcut icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("  <link rel=\"icon\" href=\"images/favicon.ico\" type=\"image/x-icon\">\n");
      out.write("\n");
      out.write(" \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .aParenthai\n");
      out.write("            {\n");
      out.write("                float: left;\n");
      out.write("                clear: none; \n");
      out.write("            }\n");
      out.write("            #d1\n");
      out.write("            {\n");
      out.write("                float:center;\n");
      out.write("                margin-left: 300px;\n");
      out.write("                margin-top: 50px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style> \n");
      out.write("    </head>\n");
      out.write("    <body onload=\"userProfile()\">\n");
      out.write("     \n");
      out.write("    <script src=\"plugins/jQuery/jquery.min.js\"></script>    \n");
      out.write("       <!-- <div class=\"modal fade\" id=\"signupModal\" tabindex=\"-1\" role=\"dialog\" aria-hidden=\"true\">\n");
      out.write("       <div class=\"modal-dialog modal-lg\" role=\"document\">\n");
      out.write("        <div class=\"modal-content rounded-0 border-0 p-4\">-->\n");
      out.write(" <section class=\"page-title-section overlay\" data-background=\"images/backgrounds/page-title.jpg\">\n");
      out.write(" <a class=\"navbar-brand\" href=\"UpdateProfile.jsp\"><img id = \"logo\" src=\"images/logo.png\" alt=\"logo\"></a>\n");
      out.write("     <div class=\"container\">\n");
      out.write("      \n");
      out.write("    <div class=\"row\">\n");
      out.write("      <div class=\"col-md-8\">\n");
      out.write("        <ul class=\"list-inline custom-breadcrumb\">\n");
      out.write("          &emsp;<li class=\"list-inline-item\"><a class=\"h2 text-primary font-secondary\" href=\"@@page-link\">Update Profile</a></li>\n");
      out.write("          <li class=\"list-inline-item text-white h3 font-secondary @@nasted\"></li>\n");
      out.write("        </ul>      \n");
      out.write("       \n");
      out.write("      <div class=\"modal-header border-0\">\n");
      out.write("                \n");
      out.write("                <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\n");
      out.write("                    <span aria-hidden=\"true\">&times;</span>\n");
      out.write("                </button>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"modal-body\">\n");
      out.write("                <form action=\"#\" class=\"row\" >\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <input type=\"text\" class=\"form-control mb-3\" id=\"loginName\" name=\"loginname\" placeholder=\"User Name\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <input type=\"email\" class=\"form-control mb-3\" id=\"loginEmail\" name=\"\" placeholder=\"Email\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <input type=\"password\" class=\"form-control mb-3\" id=\"loginPassword\" name=\"loginPassword\" placeholder=\"Password\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <input type=\"text\" class=\"form-control mb-3\" id=\"userId\" name=\"userId\" placeholder=\"Userid\" disabled>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <input type=\"tel\" class=\"form-control mb-3\" id=\"loginMobile\" name=\"loginMobile\" placeholder=\"Mobile\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <input type=\"text\" class=\"form-control mb-3\" id=\"loginAddress\" name=\"\" placeholder=\"Address\">\n");
      out.write("                    </div>\n");
      out.write("                    <span> \n");
      out.write("                    <div class=\"col-12\">\n");
      out.write("                        <button type=\"submit\" class=\"btn btn-primary\" onClick=\"update()\">Update</button>                          \n");
      out.write("                    </div>\n");
      out.write("                </form>         \n");
      out.write("                             \n");
      out.write("               \n");
      out.write("            </div>\n");
      out.write("     \n");
      out.write("     \n");
      out.write("       </div>\n");
      out.write("    </div>\n");
      out.write("  </div>\n");
      out.write("</section>\n");
      out.write("<script>\n");
      out.write("    function update()\n");
      out.write(" {\n");
      out.write("      \n");
      out.write("       var name = document.getElementById(\"loginName\").value;\n");
      out.write("    var email = document.getElementById(\"loginEmail\").value;\n");
      out.write("    \n");
      out.write(" \n");
      out.write("     var password = document.getElementById(\"loginPassword\").value;\n");
      out.write("    var userid = document.getElementById(\"userId\").value;\n");
      out.write("     var mobile = document.getElementById(\"loginMobile\").value;\n");
      out.write("    var address = document.getElementById(\"loginAddress\").value;\n");
      out.write("    var pwd;\n");
      out.write("    var ui;\n");
      out.write("   //alert(\"Before ajax\");\n");
      out.write("  \n");
      out.write("  \n");
      out.write("     $.ajax({\n");
      out.write("        type: \"post\",\n");
      out.write("        \n");
      out.write("        url:'http://localhost:8083/cdacpal/user/updateprofile?userid='+userid+'&name='+name+'&email='+email+'&password='+password+'&address='+address+'&mobileno='+mobile,\n");
      out.write("        success:function(responsedata)\n");
      out.write("        {\n");
      out.write("            if(responsedata.success==0)\n");
      out.write("            {\n");
      out.write("                \n");
      out.write("                alert(responsedata.error);                \n");
      out.write("            }\n");
      out.write("            else \n");
      out.write("            {\n");
      out.write("                  alert(\"update successfully\");\n");
      out.write("                setTimeout(function(){ window.location = '/CdacPal/index_after_login.jsp'; }, 1000);\n");
      out.write("               \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("    });\n");
      out.write(" }\n");
      out.write("         \n");
      out.write("   \n");
      out.write("    \n");
      out.write("   \n");
      out.write("\n");
      out.write("  function userProfile()\n");
      out.write("{\n");
      out.write("     \n");
      out.write("//    var name = document.getElementById(\"loginName\").value;\n");
      out.write("//    var email = document.getElementById(\"loginEmail\").value;\n");
      out.write("//     var password = document.getElementById(\"loginPassword\").value;\n");
      out.write("//    var userid = document.getElementById(\"userId\").value;\n");
      out.write("//     var mobile = document.getElementById(\"loginMobile\").value;\n");
      out.write("//    var address = document.getElementById(\"loginAddress\").value;\n");
      out.write("//    \n");
      out.write("    var loginID=localStorage.getItem(\"userid\");\n");
      out.write("    //alert(loginID);\n");
      out.write("    //alert(localStorage.getItem(\"userid\"));\n");
      out.write("    jQuery.ajax({\n");
      out.write("      \n");
      out.write("        type: \"post\",\n");
      out.write("        url:'http://localhost:8083/cdacpal/user/getprofile?userid='+loginID,\n");
      out.write("\n");
      out.write("        success:function(responsedata)\n");
      out.write("        {\n");
      out.write("            //alert(\"login Successfully\"+responsedata);\n");
      out.write("            if(responsedata == null)\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                console.log(\"kuch nahi\");\n");
      out.write("            }\n");
      out.write("            else\n");
      out.write("            {\n");
      out.write("                // console.log(responsedata.d);\n");
      out.write("                //render data into page\n");
      out.write("                //alert(responsedata.d);\n");
      out.write("                \n");
      out.write("              $('#loginName').val(responsedata['name']);\n");
      out.write("                $('#loginEmail').val(responsedata['email']);\n");
      out.write("                 $('#loginPassword').val(responsedata['password']);\n");
      out.write("                  $('#userId').val(responsedata['userid']);\n");
      out.write("                   $('#loginMobile').val(responsedata['mobileno']);\n");
      out.write("                    $('#loginAddress').val(responsedata['address']);\n");
      out.write("               \n");
      out.write("               \n");
      out.write("               \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("        \n");
      out.write("        \n");
      out.write("    });\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(" \n");
      out.write("         \n");
      out.write(" \n");
      out.write("      </script>   \n");
      out.write("         \n");
      out.write("     \n");
      out.write("     \n");
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
