package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class xuanzeti_005fupdt_005fpost_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write('\r');
      out.write('\n');

request.setCharacterEncoding("gb2312"); 
response.setCharacterEncoding("gb2312"); 

      out.write('\r');
      out.write('\n');
      db.db connDbBean = null;
      synchronized (_jspx_page_context) {
        connDbBean = (db.db) _jspx_page_context.getAttribute("connDbBean", PageContext.PAGE_SCOPE);
        if (connDbBean == null){
          connDbBean = new db.db();
          _jspx_page_context.setAttribute("connDbBean", connDbBean, PageContext.PAGE_SCOPE);
        }
      }
      out.write("\r\n");
      out.write("<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\">\r\n");
      out.write("<html>\r\n");
      out.write("  <head>\r\n");
      out.write("    <base href=\"");
      out.print(basePath);
      out.write("\">\r\n");
      out.write("    \r\n");
      out.write("    <title>My JSP 'adminyanzheng.jsp' starting page</title>\r\n");
      out.write("  </head>\r\n");
      out.write("  <body>\r\n");
      out.write("  ");

String bianhao=request.getParameter("bianhao");String kemu=request.getParameter("kemu");String shiti=request.getParameter("shiti");String nanyichengdu=request.getParameter("nanyichengdu");String xuanxiangA=request.getParameter("xuanxiangA");String xuanxiangB=request.getParameter("xuanxiangB");String xuanxiangC=request.getParameter("xuanxiangC");String xuanxiangD=request.getParameter("xuanxiangD");String daan=request.getParameter("daan");
String id=request.getParameter("id");
String sql="update xuanzeti set bianhao='"+bianhao+"',kemu='"+kemu+"',shiti='"+shiti+"',nanyichengdu='"+nanyichengdu+"',xuanxiangA='"+xuanxiangA+"',xuanxiangB='"+xuanxiangB+"',xuanxiangC='"+xuanxiangC+"',xuanxiangD='"+xuanxiangD+"',daan='"+daan+"' where id= "+id;
connDbBean.executeUpdate(sql);
out.print("<script>alert('修改成功!!');location.href='xuanzeti_list.jsp';</script>");

      out.write("\r\n");
      out.write("  </body>\r\n");
      out.write("</html>\r\n");
      out.write("\r\n");
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
