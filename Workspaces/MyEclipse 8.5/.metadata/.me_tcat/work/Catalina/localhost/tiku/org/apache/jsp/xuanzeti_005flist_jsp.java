package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class xuanzeti_005flist_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    <title>选择题</title><LINK href=\"css.css\" type=text/css rel=stylesheet>\r\n");
      out.write("    <script language=\"javascript\" src=\"js/Calendar.js\"></script>\r\n");
      out.write("\r\n");
      out.write("  </head>\r\n");

String sql;
ResultSet RS_result;

      out.write("\r\n");
      out.write("  <body >\r\n");
      out.write("  <p>已有选择题列表：</p>\r\n");
      out.write("  <form name=\"form1\" id=\"form1\" method=\"post\" action=\"\">\r\n");
      out.write("   搜索:&nbsp;&nbsp;编号：<input name=\"bianhao\" type=\"text\" id=\"bianhao\" style='border:solid 1px #000000; color:#666666' size='15' />  科目：<select name='kemu' id='kemu'><option value=\"\">所有</option>");
 sql="select kemu from kemuxinxi order by id desc";RS_result=connDbBean.executeQuery(sql);while(RS_result.next()){
      out.write("<option value=\"");
      out.print( RS_result.getString("kemu"));
      out.write('"');
      out.write(' ');
      out.write('>');
      out.print(RS_result.getString("kemu"));
      out.write("</option>");
}
      out.write("</select>  难易程度：\r\n");
      out.write("   <select name='nanyichengdu' id='nanyichengdu'>\r\n");
      out.write("     <option value=\"\">所有</option>\r\n");
      out.write("     <option value=\"易\">易</option>\r\n");
      out.write("     <option value=\"中\">中</option>\r\n");
      out.write("     <option value=\"难\">难</option>\r\n");
      out.write("   </select>\r\n");
      out.write("    <input type=\"submit\" name=\"Submit\" value=\"查找\" style='border:solid 1px #000000; color:#666666' />\r\n");
      out.write("</form>\r\n");
      out.write("\r\n");
      out.write("<table width=\"100%\" border=\"1\" align=\"center\" cellpadding=\"3\" cellspacing=\"1\" bordercolor=\"00FFFF\" style=\"border-collapse:collapse\">  \r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"30\" align=\"center\" bgcolor=\"CCFFFF\">序号</td>\r\n");
      out.write("    <td bgcolor='#CCFFFF'>编号</td><td bgcolor='#CCFFFF'>科目</td><td bgcolor='#CCFFFF'>难易程度</td><td bgcolor='#CCFFFF'>选项A</td><td bgcolor='#CCFFFF'>选项B</td><td bgcolor='#CCFFFF'>选项C</td><td bgcolor='#CCFFFF'>选项D</td><td bgcolor='#CCFFFF'>答案</td>\r\n");
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
				String fysql="select count(id) as ss from xuanzeti";
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
  sql="select  * from xuanzeti where 1=1 ";
   }
   else
   {
   String tempsql="select  id from xuanzeti order by id desc limit 0,"+(curpage-1)*page_record+"";
   ResultSet tempRS_result=connDbBean.executeQuery(tempsql);
   int tempid=0;
   String tempidstring="";
   while(tempRS_result.next())
   {
   		tempidstring=tempidstring+tempRS_result.getString("id")+",";
   }
   tempidstring=tempidstring.substring(0,tempidstring.length()-1);
  sql="select  * from xuanzeti where id not in ("+tempidstring+")  ";
  }
  
  
if(request.getParameter("bianhao")=="" ||request.getParameter("bianhao")==null ){}else{sql=sql+" and bianhao like '%"+new String(request.getParameter("bianhao").getBytes("8859_1"))+"%'";}
if(request.getParameter("kemu")=="" ||request.getParameter("kemu")==null ){}else{sql=sql+" and kemu like '%"+new String(request.getParameter("kemu").getBytes("8859_1"))+"%'";}
if(request.getParameter("nanyichengdu")=="" ||request.getParameter("nanyichengdu")==null ){}else{sql=sql+" and nanyichengdu like '%"+new String(request.getParameter("nanyichengdu").getBytes("8859_1"))+"%'";}
  sql=sql+" order by id desc  limit 0,"+page_record+"";
  
 
  RS_result=connDbBean.executeQuery(sql);
 String id="";
 String bianhao="";String kemu="";String shiti="";String nanyichengdu="";String xuanxiangA="";String xuanxiangB="";String xuanxiangC="";String xuanxiangD="";String daan="";
 String addtime="";
 int i=0;
 //difengysfiqfgieuheze 
 while(RS_result.next()){
 i=i+1;
 id=RS_result.getString("id");
bianhao=RS_result.getString("bianhao");kemu=RS_result.getString("kemu");shiti=RS_result.getString("shiti");nanyichengdu=RS_result.getString("nanyichengdu");xuanxiangA=RS_result.getString("xuanxiangA");xuanxiangB=RS_result.getString("xuanxiangB");xuanxiangC=RS_result.getString("xuanxiangC");xuanxiangD=RS_result.getString("xuanxiangD");daan=RS_result.getString("daan");
 addtime=RS_result.getString("addtime");
 //zoxngxetxoxngjxvi 

      out.write("\r\n");
      out.write("  <tr>\r\n");
      out.write("    <td width=\"30\" align=\"center\">");
      out.print(i );
      out.write("</td>\r\n");
      out.write("    <td>");
      out.print(bianhao );
      out.write("</td><td>");
      out.print(kemu );
      out.write("</td><td>");
      out.print(nanyichengdu );
      out.write("</td><td>");
      out.print(xuanxiangA );
      out.write("</td><td>");
      out.print(xuanxiangB );
      out.write("</td><td>");
      out.print(xuanxiangC );
      out.write("</td><td>");
      out.print(xuanxiangD );
      out.write("</td><td>");
      out.print(daan );
      out.write("</td>\r\n");
      out.write("    <td width=\"138\" align=\"center\">");
      out.print(addtime );
      out.write("</td>\r\n");
      out.write("    <td width=\"60\" align=\"center\"><a href=\"xuanzeti_updt.jsp?id=");
      out.print(id);
      out.write("\">修改</a> <a href=\"xuanzeti_detail.jsp?id=");
      out.print(id);
      out.write("\">详细</a>  <a href=\"del.jsp?id=");
      out.print(id );
      out.write("&tablename=xuanzeti\" onClick=\"return confirm('真的要删除？')\">删除</a></td>\r\n");
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
      out.write("条/页　<a href=\"xuanzeti_list.jsp?page=1\">首页</a>　<a href=\"xuanzeti_list.jsp?page=");
      out.print( curpage-1);
      out.write("\">上一页</a>　<A href=\"xuanzeti_list.jsp?page=");
      out.print( curpage+1);
      out.write("\">下一页</A>　<a href=\"xuanzeti_list.jsp?page=");
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
