package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class top_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\r\n");
      out.write("\r\n");

String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";

      out.write("\r\n");
      out.write("\r\n");
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
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>计算机语言类题库管理系统</title><script language=\"javascript\" src=\"images/qkjs.js\"></script>\r\n");
      out.write("<LINK media=all href=\"images/style.css\" type=text/css rel=stylesheet>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("\r\n");
      out.write("<BODY > \r\n");
      out.write("<TABLE height=60 cellSpacing=0 cellPadding=0 width=\"100%\" border=0>\r\n");
      out.write("  <TBODY>\r\n");
      out.write("  <TR>\r\n");
      out.write("    <TD vAlign=top width=113 background=images/top_bg.gif \r\n");
      out.write("      bgColor=#ebf2f4><IMG height=60 src=\"images/top_logo.gif\" \r\n");
      out.write("width=95></TD>\r\n");
      out.write("    <TD width=\"348\" align=\"left\" vAlign=middle background=images/top_bg.gif bgColor=#ebf2f4><div style=\"margin-top: 5pt; font-weight: bold; font-size: 19pt; filter: Glow(Color=#000000,Strength=2);\r\n");
      out.write("                    width: 100%; color: #ffffff; font-family: 宋体\">\r\n");
      out.write("                    <div align=\"center\" class=\"STYLE5\">\r\n");
      out.write("                        <div align=\"left\">计算机语言类题库系统</div>\r\n");
      out.write("                    </div>\r\n");
      out.write("      </div></TD>\r\n");
      out.write("    <TD width=\"383\" vAlign=top background=images/top_bg.gif bgColor=#ebf2f4><TABLE cellSpacing=0 cellPadding=0 width=\"92%\" border=0>\r\n");
      out.write("      <TBODY>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD height=\"19\">&nbsp;</TD>\r\n");
      out.write("        </TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD style=\"FONT-SIZE: 12px; COLOR: #333333\" height=29>欢迎您！");
      out.print(request.getSession().getAttribute("username"));
      out.write(" [权限：");
      out.print(request.getSession().getAttribute("cx"));
      out.write("]\r\n");
      out.write("            </TD>\r\n");
      out.write("        </TR>\r\n");
      out.write("      </TBODY>\r\n");
      out.write("    </TABLE></TD>\r\n");
      out.write("    <TD width=\"473\" align=\"right\" background=images/top_bg.gif bgColor=#ebf2f4>\r\n");
      out.write("      <TABLE cellSpacing=0 cellPadding=0 border=0>\r\n");
      out.write("        <TBODY>\r\n");
      out.write("        <TR>\r\n");
      out.write("          <TD width=\"60\" height=\"51\" background=\"images/top_1.jpg\"><table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\"><a href=\"sy.jsp\" target=\"fs_main\">系统主页</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table></TD>\r\n");
      out.write("\t\t  <td>&nbsp;</td>\r\n");
      out.write("          <TD width=\"60\" height=\"51\" background=\"images/top_2.jpg\"><table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\"><a href=\"wnl.asp\" target=\"fs_main\">万年历</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table></TD>\r\n");
      out.write("\t\t  <td>&nbsp;</td>\r\n");
      out.write("          <TD width=\"60\" height=\"51\" background=\"images/top_3.jpg\"><table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\"><a href=\"yhzhgl.jsp\" target=\"fs_main\">用户管理</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table></TD>\r\n");
      out.write("\t\t  <td>&nbsp;</td>\r\n");
      out.write("           <TD width=\"60\" height=\"51\" background=\"images/top_4.jpg\"><table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\"><a onClick=\"javascript:alert('本系统由忻州师范学院黎瑶开发，版权归忻州师院所有');\" style=\"cursor:hand\">系统帮助</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table></TD>\r\n");
      out.write("\t\t  <td>&nbsp;</td>\r\n");
      out.write("          <TD width=\"60\" height=\"51\" background=\"images/top_4_1.jpg\"><table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\"><a href=\"jsq.asp\" target=\"fs_main\">计算器</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table></TD>\r\n");
      out.write("\t\t  <td>&nbsp;</td>\r\n");
      out.write("         \r\n");
      out.write("          <TD width=\"60\" height=\"51\" background=\"images/top_7.jpg\"><table width=\"100%\" height=\"100%\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td height=\"36\">&nbsp;</td>\r\n");
      out.write("            </tr>\r\n");
      out.write("            <tr>\r\n");
      out.write("              <td align=\"center\"><a href=\"logout.jsp\" target=\"_top\">安全退出</a></td>\r\n");
      out.write("            </tr>\r\n");
      out.write("          </table></TD></TR>\r\n");
      out.write("        <TR>\r\n");
      out.write("      <TD colSpan=7 \r\n");
      out.write("height=6></TD></TR></TBODY></TABLE></TD>\r\n");
      out.write("  </TR></TBODY></TABLE>\r\n");
      out.write("</BODY></HTML>\r\n");
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
