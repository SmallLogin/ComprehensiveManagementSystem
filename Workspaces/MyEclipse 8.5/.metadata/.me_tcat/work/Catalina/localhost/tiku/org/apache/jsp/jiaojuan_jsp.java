package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class jiaojuan_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");
      out.write("  \r\n");
      out.write("  <body>\r\n");
      out.write("  ");

 

String tmp1;
String tmp2;
int i=0;
int df=0,df2=0,df3=0,df4=0,dfz=0;
for (i=1;i<=15;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("xztshitida"+String.valueOf(i));
	tmp2=request.getParameter("xztxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		//out.print(i);
		if(tmp1.equals(tmp2))
		{
		df=df+2;
		}
	}
}
for (i=1;i<=10;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("tdtshitida"+String.valueOf(i));
	tmp2=request.getParameter("tktdaan"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		if(tmp1.equals(tmp2))
		{
		df2=df2+3;
		}
	}
}
for (i=1;i<=10;i++)
{
	//out.print(request.getParameter("xztshitida"+String.valueOf(i)));
	tmp1=request.getParameter("pdtshitida"+String.valueOf(i));
	tmp2=request.getParameter("pdtxxa"+String.valueOf(i));
	if(tmp2==null || tmp2=="")
	{}
	else
	{
		if(tmp1.equals(tmp2))
		{
		df3=df3+10;
		}
	}
}
dfz=df+df2+df3;
//out.print(df);
String sql;
sql="insert into cj(username,cj,sjbh) values('"+request.getSession().getAttribute("username")+"',"+dfz+",'"+request.getParameter("bianhao")+"')";
	connDbBean.executeUpdate(sql);
  	  	out.print("<script>alert('交卷成功!!您本次成绩为"+String.valueOf(dfz)+"分');location.href='cj_list2.jsp';</script>");


 
      out.write("\r\n");
      out.write("  </body>\r\n");
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
