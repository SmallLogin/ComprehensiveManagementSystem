package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class main_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>计算机语言类题库管理系统</title>\r\n");
      out.write("    \r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("<FRAMESET border=1 \r\n");
      out.write("frameSpacing=0 rows=60,* TOPMARGIN=\"0\" LEFTMARGIN=\"0\" MARGINHEIGHT=\"0\" \r\n");
      out.write("MARGINWIDTH=\"0\"><FRAME border=0 name=fraToolbar marginWidth=0 marginHeight=0 \r\n");
      out.write("src=\"top.jsp\" frameBorder=no noResize scrolling=no \r\n");
      out.write("TOPMARGIN=\"0\" LEFTMARGIN=\"0\" target=\"contents\"><FRAMESET border=1 name=fstMain \r\n");
      out.write("frameSpacing=6 frameBorder=1 cols=150,* TOPMARGIN=\"0\" LEFTMARGIN=\"0\" \r\n");
      out.write("MARGINHEIGHT=\"0\" MARGINWIDTH=\"0\"><FRAME border=1 name=left marginWidth=0 \r\n");
      out.write("borderColor=#b9d8ec marginHeight=0 src=\"mygo.jsp\" \r\n");
      out.write("frameBorder=0 scrolling=no TOPMARGIN=\"0\" LEFTMARGIN=\"0\" target=\"main\"><FRAME \r\n");
      out.write("border=0 name=fs_main borderColor=#6699cc src=\"sy.jsp\" \r\n");
      out.write("frameBorder=no></FRAMESET></FRAMESET><noframes></noframes></HTML>\r\n");
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
