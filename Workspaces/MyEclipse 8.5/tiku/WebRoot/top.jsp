
<%@ page language="java"  pageEncoding="gb2312"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@ page language="java" import="java.sql.*" %>
<jsp:useBean id="connDbBean" scope="page" class="db.db"/>
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>�����������������ϵͳ</title><script language="javascript" src="images/qkjs.js"></script>
<LINK media=all href="images/style.css" type=text/css rel=stylesheet>



  </head>

<BODY > 
<TABLE height=60 cellSpacing=0 cellPadding=0 width="100%" border=0>
  <TBODY>
  <TR>
    <TD vAlign=top width=113 background=images/top_bg.gif 
      bgColor=#ebf2f4><IMG height=60 src="images/top_logo.gif" 
width=95></TD>
    <TD width="348" align="left" vAlign=middle background=images/top_bg.gif bgColor=#ebf2f4><div style="margin-top: 5pt; font-weight: bold; font-size: 19pt; filter: Glow(Color=#000000,Strength=2);
                    width: 100%; color: #ffffff; font-family: ����">
                    <div align="center" class="STYLE5">
                        <div align="left">��������������ϵͳ</div>
                    </div>
      </div></TD>
    <TD width="383" vAlign=top background=images/top_bg.gif bgColor=#ebf2f4><TABLE cellSpacing=0 cellPadding=0 width="92%" border=0>
      <TBODY>
        <TR>
          <TD height="19">&nbsp;</TD>
        </TR>
        <TR>
          <TD style="FONT-SIZE: 12px; COLOR: #333333" height=29>��ӭ����<%=request.getSession().getAttribute("username")%> [Ȩ�ޣ�<%=request.getSession().getAttribute("cx")%>]
            </TD>
        </TR>
      </TBODY>
    </TABLE></TD>
    <TD width="473" align="right" background=images/top_bg.gif bgColor=#ebf2f4>
      <TABLE cellSpacing=0 cellPadding=0 border=0>
        <TBODY>
        <TR>
          <TD width="60" height="51" background="images/top_1.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">&nbsp;</td>
            </tr>
            <tr>
              <td align="center"><a href="sy.jsp" target="fs_main">ϵͳ��ҳ</a></td>
            </tr>
          </table></TD>
		  <td>&nbsp;</td>
          <TD width="60" height="51" background="images/top_2.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">&nbsp;</td>
            </tr>
            <tr>
              <td align="center"><a href="wnl.asp" target="fs_main">������</a></td>
            </tr>
          </table></TD>
		  <td>&nbsp;</td>
          <TD width="60" height="51" background="images/top_3.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">&nbsp;</td>
            </tr>
            <tr>
              <td align="center"><a href="yhzhgl.jsp" target="fs_main">�û�����</a></td>
            </tr>
          </table></TD>
		  <td>&nbsp;</td>
           <TD width="60" height="51" background="images/top_4.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">&nbsp;</td>
            </tr>
            <tr>
              <td align="center"><a onClick="javascript:alert('��ϵͳ������ʦ��ѧԺ������������Ȩ������ʦԺ����');" style="cursor:hand">ϵͳ����</a></td>
            </tr>
          </table></TD>
		  <td>&nbsp;</td>
          <TD width="60" height="51" background="images/top_4_1.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">&nbsp;</td>
            </tr>
            <tr>
              <td align="center"><a href="jsq.asp" target="fs_main">������</a></td>
            </tr>
          </table></TD>
		  <td>&nbsp;</td>
         
          <TD width="60" height="51" background="images/top_7.jpg"><table width="100%" height="100%" border="0" cellpadding="0" cellspacing="0">
            <tr>
              <td height="36">&nbsp;</td>
            </tr>
            <tr>
              <td align="center"><a href="logout.jsp" target="_top">��ȫ�˳�</a></td>
            </tr>
          </table></TD></TR>
        <TR>
      <TD colSpan=7 
height=6></TD></TR></TBODY></TABLE></TD>
  </TR></TBODY></TABLE>
</BODY></HTML>
