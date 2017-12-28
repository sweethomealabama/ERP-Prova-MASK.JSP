<%-- list.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="js/Calendar.js"></script>
<%-- Here starts the javascript call function --%>
<script type="text/javascript" src="list.js">
</script>
<div class="content-right">
	<div class="content-r-pic_w">
		<div style="margin:8px auto auto 12px;margin-top:6px">
			<span class="page_title">角色管理</span>
		</div>
	</div>
	<div class="content-text">
		<form action="list.jsp" method="post"> 
			<div class="square-o-top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					style="font-size:14px; font-weight:bold; font-family:"黑体";">
					<tr>
						<td width="68" height="30">&nbsp;</td>
						<td width="123">&nbsp;</td>
						<td width="62">角色名称</td>
						<td width="142"><input type="text" size="18" /></td>
						<td width="60">角色编码</td>
						<td width="149"><input type="text" size="18" /></td>
						<td width="70"><a id="query"> <img src="images/can_b_01.gif" border="0" /> </a></td>
						<td width="70"><a href="role_input.action"><img src="images/can_b_02.gif" border="0" /></a></td>
					</tr>
				</table>
			</div>
			<!--"square-o-top"end-->
			<div class="square-order">
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
					<tr align="center"
						style="background:url(images/table_bg.gif) repeat-x;">
						<td width="50%" height="30">角色名称</td>
						<td width="50%">操作</td>
					</tr>
					<s:iterator value="roleList">
					<tr align="center" bgcolor="#FFFFFF">
						<td height="30">${name}</td>
						<td>
							<img src="images/icon_3.gif" /> 
							<span style="line-height:12px; text-align:center;"> 
								<s:a action="role_input" cssClass="xiu">
									<s:param name="rm.uuid" value="uuid"/>
									修改
								</s:a> 
							</span> 
							<img src="images/icon_04.gif" /> 
							<span style="line-height:12px; text-align:center;"> 
								<a href="javascript:void(0)" class="xiu" onclick="showMsg('是否删除该项数据？',${uuid})">删除</a>
							</span>
						</td>
					</tr>
					</s:iterator>
				</table>
			</div>
		</form>
	</div>
	<div class="content-bbg"></div>
</div>
<%-- end of list.jsp --%>
