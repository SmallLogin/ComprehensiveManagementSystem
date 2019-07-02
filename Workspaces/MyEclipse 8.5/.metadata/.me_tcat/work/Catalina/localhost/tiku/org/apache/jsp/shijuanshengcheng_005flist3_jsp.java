package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class shijuanshengcheng_005flist3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>试卷生成</title><LINK href=\"css.css\" type=text/css rel=stylesheet>\r\n");
      out.write("    <script language=\"javascript\" src=\"js/Calendar.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");

String sql;
ResultSet RS_result;

      out.write("\r\n");
      out.write("  <body >\r\n");
      out.write("  <p>已有试卷生成列表：</p>\r\n");
      out.write("  <form name=\"form1\" id=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("   搜索:&nbsp;&nbsp;试卷编号：<input name=\"shijuanbianhao\" type=\"text\" id=\"shijuanbianhao\" style='border:solid 1px #000000; color:#666666' size='15' />  科目：<select name='kemu' id='kemu'><option value=\"\">所有</option>");
 sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){
      out.write("<option value=\"");
      out.print( RS_result.getString("kemu"));
      out.write('"');
      out.write(' ');
      out.write('>');
      out.print(RS_result.getString("kemu"));
      out.write("</option>");
}
      out.write("</select>&nbsp;&nbsp;发布人：<input name=\"faburen\" type=\"text\" id=\"faburen\" style='border:solid 1px #000000; color:#666666' size='15' />\r\n");
      out.write("     <input type=\"submit\" name=\"Submit\" value=\"查找\" style='border:solid 1px #000000; color:#666666' />\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"00FFFF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"30\" align=\"center\" bgcolor=\"CCFFFF\">序号</td>\r\n");
      out.write("    <td bgcolor='#CCFFFF'>试卷编号</td><td bgcolor='#CCFFFF'>科目</td><td bgcolor='#CCFFFF'>选择题</td><td bgcolor='#CCFFFF'>填空题</td><td bgcolor='#CCFFFF'>判断题</td><td bgcolor='#CCFFFF'>发布人</td>\r\n");
      out.write("    <td width=\"138\" align=\"center\" bgcolor=\"CCFFFF\">添加时间</td>\r\n");
      out.write("    \r\n");
      out.write("    <td width=\"60\" align=\"center\" bgcolor=\"CCFFFF\">操作</td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  ");

  int curpage=1;//当前页
				int page_record=10;//每页显示的记录数
				int zgs=0;
				int zys=0;
				//用下面的方法（sql查询完成，速度快）
				String hsgnpage=request.getParameter("page");
				String fysql="select count(id) as ss from shijuanshengcheng";
				ResultSet RS_resultfy=connDbBean.executeQuery(fysql);
  while(RS_resultfy.next()){
  zgs=Integer.parseInt(RS_resultfy.getString("ss"));
  if((zgs % page_record)==0)
  {
  zys=zgs/page_record;
  }
  else
  {
  	zys=zgs/page_record+1;
  }
  }
				if (hsgnpage!=null)
				{
				curpage=Integer.parseInt(request.getParameter("page"));//获取传递的值，需要显示的页
				}
				else
				{
				curpage=1;
				}
				if (curpage==0)
				{
					curpage=1;
				}
				if(curpage>zys)
				{
					curpage=zys;
				}
if(((curpage-1)*page_record)==0 || curpage==0)
   {
  sql="select  * from shijuanshengcheng where 1=1 ";
   }
   else
   {
   String tempsql="select  id from shijuanshengcheng order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from shijuanshengcheng where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("shijuanbianhao")=="" ||request.getParameter("shijuanbianhao")==null ){}else{sql=sql+" and shijuanbianhao like '%"+new String(request.getParameter("shijuanbianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("kemu")=="" ||request.getParameter("kemu")==null ){}else{sql=sql+" and kemu like '%"+new String(request.getParameter("kemu").getBytes("8859_1"))+"%'";}
if(request.getParameter("faburen")=="" ||request.getParameter("faburen")==null ){}else{sql=sql+" and faburen like '%"+new String(request.getParameter("faburen").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String shijuanbianhao="";String kemu="";String xuanzeti="";String tiankongti="";String panduanti="";String faburen="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
shijuanbianhao=RS_result.getString("shijuanbianhao");kemu=RS_result.getString("kemu");xuanzeti=RS_result.getString("xuanzeti");tiankongti=RS_result.getString("tiankongti");panduanti=RS_result.getString("panduanti");faburen=RS_result.getString("faburen");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi 

      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"30\" align=\"center\">");
      out.print(i );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(shijuanbianhao );
      out.write("</td><td>");
      out.print(kemu );
      out.write("</td><td>");
      out.print(xuanzeti );
      out.write("</td><td>");
      out.print(tiankongti );
      out.write("</td><td>");
      out.print(panduanti );
      out.write("</td><td>");
      out.print(faburen );
      out.write("</td>\r\n");
      out.write("    <td width=\"138\" align=\"center\">");
      out.print(addtime );
      out.write("</td>\r\n");
      out.write("    <td width=\"60\" align=\"center\"><a href=\"shijuan_detail.jsp?id=");
      out.print(id);
      out.write("\">考试</a> </td>\r\n");
      out.write("  </tr>\r\n");
      out.write("  \t");

  }
   
      out.write("\r\n");
      out.write("</table>\r\n");
//yougongzitongji
      out.write("\r\n");
      out.write("<br>\r\n");
      out.write("以上数据共");
      out.print(i );
      out.write("条,<a style=\"cursor:hand\" onClick=\"javascript:window.print();\">打印本页</a>\r\n");
      out.write("<p align=\"center\">&nbsp;共");
      out.print(zgs);
      out.write("条记录&nbsp;&nbsp;");
      out.print(page_record );
      out.write("条/页　<a href=\"shijuanshengcheng_list3.jsp?page=1\">首页</a>　<a href=\"shijuanshengcheng_list3.jsp?page=");
      out.print( curpage-1);
      out.write("\">上一页</a>　<A href=\"shijuanshengcheng_list3.jsp?page=");
      out.print( curpage+1);
      out.write("\">下一页</A>　<a href=\"shijuanshengcheng_list3.jsp?page=");
      out.print(zys );
      out.write("\">尾页</A>　当前第<FONT color=red>");
      out.print(curpage );
      out.write("</FONT>页/共<FONT color=red>");
      out.print(zys );
      out.write("</FONT>页</p>\r\n");
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
