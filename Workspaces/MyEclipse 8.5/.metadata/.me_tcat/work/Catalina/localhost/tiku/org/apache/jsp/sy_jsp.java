package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class sy_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>计算机语言类题库管理系统</title>\r\n");
      out.write("<LINK href=\"images/style.css\" type=text/css rel=stylesheet>\r\n");
      out.write("</head>\r\n");
      out.write(" <BODY leftMargin=5 topMargin=5 rightMargin=5>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<table width=\"100%\" height=\"210\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"#D9E9FF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("  <TBODY>\r\n");
      out.write("    <TR \r\n");
      out.write("  align=middle bgColor=#ffffff>\r\n");
      out.write("      <td colspan=\"4\" bgColor=#CADCEA><strong>系统基本信息</strong></td>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD width=\"14%\" align=\"left\" valign=\"bottom\" >当前用户：</TD>\r\n");
      out.write("      <TD width=\"37%\"  align=\"left\" valign=\"bottom\" ><font class=\"t4\">");
      out.print(request.getSession().getAttribute("username"));
      out.write("</font></TD>\r\n");
      out.write("      <TD width=\"9%\"  align=\"left\" valign=\"bottom\" >您的权限：</TD>\r\n");
      out.write("      <TD width=\"40%\"  align=\"left\" valign=\"bottom\" ><font class=\"t4\">");
      out.print(request.getSession().getAttribute("cx"));
      out.write("</font></TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD height=\"38\" align=\"left\" valign=\"bottom\"  >当前日期：</TD>\r\n");
      out.write("      <TD  align=\"left\" valign=\"bottom\" >");
java.util.Date date = new java.util.Date();
java.text.SimpleDateFormat format = new java.text.SimpleDateFormat("yyyy-MM-dd", java.util.Locale.CHINA);

String result = format.format(date);
out.print(result);
      out.write("</TD>\r\n");
      out.write("      <TD align=\"left\" valign=\"bottom\" >您的IP：</TD>\r\n");
      out.write("      <TD  align=\"left\" valign=\"bottom\" >");
      out.print(request.getRemoteAddr() );
      out.write("</TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD align=\"left\" valign=\"bottom\"  >浏览器版本：</TD>\r\n");
      out.write("      <TD  align=\"left\" valign=\"bottom\" ><font class=\"t41\">");
      out.print(request.getHeader("User-Agent"));
      out.write("</font></TD>\r\n");
      out.write("      <TD align=\"left\" valign=\"bottom\" >操作系统：</TD>\r\n");
      out.write("      <TD  align=\"left\" valign=\"bottom\" ><font class=\"t41\">");
      out.print(System.getProperty("os.name"));
      out.write(" </font></TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD height=\"43\" align=\"left\" valign=\"bottom\"  >服务器端口：</TD>\r\n");
      out.write("      <TD  align=\"left\" valign=\"bottom\" ><font class=\"t41\">");
      out.print(request.getServerPort());
      out.write("</font></TD>\r\n");
      out.write("      <TD align=\"left\" valign=\"bottom\" >开发日期：</TD>\r\n");
      out.write("      <TD  align=\"left\" valign=\"bottom\" >");

out.print(result);
      out.write("</TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("  </TBODY>\r\n");
      out.write("</TABLE>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<table width=\"100%\" height=\"193\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"#D9E9FF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("  <TBODY>\r\n");
      out.write("    <TR \r\n");
      out.write("  align=middle bgColor=#ffffff>\r\n");
      out.write("      <td colspan=\"2\" bgColor=#CADCEA><strong>计算机语言类题库管理系统</strong></td>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD width=\"10%\" align=\"left\" >系统作者：</TD>\r\n");
      out.write("      <TD width=\"41%\"  align=\"left\" ><font class=\"t4\">黎瑶</font></TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD align=\"left\"  >指导老师：</TD>\r\n");
      out.write("      <TD  align=\"left\" >焦莉娟老师</TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("    <TR   align=middle \r\n");
      out.write("  bgColor=#ffffff>\r\n");
      out.write("      <TD align=\"left\"  >联系方式：</TD>\r\n");
      out.write("      <TD  align=\"left\" ><font class=\"t41\">18834073137</font></TD>\r\n");
      out.write("    </TR>\r\n");
      out.write("  </TBODY>\r\n");
      out.write("</TABLE>\r\n");
      out.write("<p>&nbsp;</p>\r\n");
      out.write("<P align=right>&nbsp;</P>\r\n");
      out.write("</BODY>\r\n");
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
