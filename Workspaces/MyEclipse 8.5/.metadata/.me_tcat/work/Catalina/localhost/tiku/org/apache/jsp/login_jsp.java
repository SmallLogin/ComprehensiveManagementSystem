package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List _jspx_dependants;

  private javax.el.ExpressionFactory _el_expressionfactory;
  private org.apache.AnnotationProcessor _jsp_annotationprocessor;

  public Object getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
    _jsp_annotationprocessor = (org.apache.AnnotationProcessor) getServletConfig().getServletContext().getAttribute(org.apache.AnnotationProcessor.class.getName());
  }

  public void _jspDestroy() {
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
      response.setContentType("text/html;charset=gb2312");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write('\r');
      out.write('\n');

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
      out.write("<html xmlns=\"http://www.w3.org/1999/xhtml\">\r\n");
      db.db connDbBean = null;
      synchronized (_jspx_page_context) {
        connDbBean = (db.db) _jspx_page_context.getAttribute("connDbBean", PageContext.PAGE_SCOPE);
        if (connDbBean == null){
          connDbBean = new db.db();
          _jspx_page_context.setAttribute("connDbBean", connDbBean, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("<title>用户登录</title>\r\n");
      out.write("<style type=\"text/css\">\r\n");
      out.write("<!--\r\n");
      out.write("*{overflow:hidden; font-size:9pt;}\r\n");
      out.write("body {s\r\n");
      out.write("\tmargin-left: 0px;\r\n");
      out.write("\tmargin-top: 0px;\r\n");
      out.write("\tmargin-right: 0px;\r\n");
      out.write("\tmargin-bottom: 0px;\r\n");
      out.write("\t/*background-image: url(images/bg.gif);*/\r\n");
      out.write("\tbackground-repeat: repeat-x;\r\n");
      out.write("\tbackground-color: #B7DBFF;\r\n");
      out.write("}\r\n");
      out.write(".STYLE6 {color: #FFFFFF}\r\n");
      out.write(".STYLE5 {color: #CC0000;\r\n");
      out.write("\tfont-size: 26pt;\r\n");
      out.write("}\r\n");
      out.write("-->\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=gb2312\"></head>\r\n");
      out.write("<script language=\"javascript\">\r\n");
      out.write("function check()\r\n");
      out.write("{\r\n");
      out.write("\tif(document.form1.username.value==\"\" || document.form1.pwd.value==\"\")\r\n");
      out.write("\t{\r\n");
      out.write("\t\talert('请输入完整');\r\n");
      out.write("\t\treturn false;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("</script>\r\n");
      out.write("<body leftmargin=\"0\" topmargin=\"0\" marginwidth=\"0\" marginheight=\"0\"><table width=\"1102\" height=\"700\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" background=\"images/bg.jpg\" id=\"__01\">\r\n");
      out.write("<table width=\"1102\" height=\"700\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\" background=\"images/hsg.jpg\" id=\"__01\">\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td height=\"180\" colspan=\"3\" ><div style=\"font-family:宋体; color:#FFFFFF; filter:Glow(Color=#000000,Strength=2); WIDTH: 100%; FONT-WEIGHT: bold; FONT-SIZE: 19pt; margin-top:5pt\">\r\n");
      out.write("          <div align=\"center\" class=\"STYLE5\">计算机语言类题库管理系统</div>\r\n");
      out.write("\t    </div></td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td width=\"717\" rowspan=\"2\">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</td>\r\n");
      out.write("\t\t<td width=\"324\" height=\"319\" ><table width=\"190\" border=\"0\" align=\"center\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("          <form name=\"form1\" method=\"post\" action=\"adminyanzheng.jsp\">\r\n");
      out.write("\t\t  <tr>\r\n");
      out.write("            <td width=\"44\" height=\"30\"><span class=\"STYLE3 STYLE6\">用户:</span></td>\r\n");
      out.write("            <td width=\"142\" height=\"30\"><input name=\"username\" type=\"text\" id=\"username\" style=\"width:100px; height:16px; border:solid 1px #000000; color:#666666\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"30\"><span class=\"STYLE3 STYLE6\">密码:</span></td>\r\n");
      out.write("            <td height=\"30\"><input name=\"pwd\" type=\"password\" id=\"pwd\" style=\"width:100px; height:16px; border:solid 1px #000000; color:#666666\"></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"30\"><span class=\"STYLE3 STYLE6\">权限:</span></td>\r\n");
      out.write("            <td height=\"30\"><select name=\"cx\" id=\"cx\">\r\n");
      out.write("                <option value=\"管理员\">管理员</option>\r\n");
      out.write("                <option value=\"学生\">学生</option>\r\n");
      out.write("              </select></td>\r\n");
      out.write("          </tr>\r\n");
      out.write("          <tr>\r\n");
      out.write("            <td height=\"30\" align=\"center\">&nbsp;</td>\r\n");
      out.write("            <td height=\"30\" align=\"left\"><input type=\"submit\" name=\"Submit\" value=\"登录\" onClick=\"return check();\">\r\n");
      out.write("              <input type=\"reset\" name=\"Submit2\" value=\"重置\"></td>\r\n");
      out.write("          </tr></form>\r\n");
      out.write("      </table></td>\r\n");
      out.write("\t\t<td width=\"61\" rowspan=\"2\">&nbsp;</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("\t<tr>\r\n");
      out.write("\t\t<td>&nbsp;</td>\r\n");
      out.write("\t</tr>\r\n");
      out.write("</table>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try { out.clearBuffer(); } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
