<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<link href="css/index.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="js/jquery-1.8.3.js"></script>
<script type="text/javascript" src="list.js">
</script>
<div class="content-right">
	<div class="content-r-pic_w">
		<div style="margin:8px auto auto 12px;margin-top:6px">
			<span class="page_title">部门管理</span>
		</div>
	</div>
	<div class="content-text">
		<s:form action="dep_list" method="post">
			<div class="square-o-top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					style="font-size:14px; font-weight:bold; font-family:"黑体";">
					<tr>
						<td width="68" height="30">&nbsp;&nbsp;&nbsp;</td>
						<td width="123">&nbsp;</td>
						<td width="62">部门名称:</td>
						<td width="142"><s:textfield name="dqm.name" size="18"/></td>
						<td width="60">电话:</td>
						<td width="149"><s:textfield name="dqm.tele" size="18"/></td>
						<td width="70">
							<a id="query"> 
								<img src="images/can_b_01.gif" border="0" /> 
							</a>
						</td>
						<td width="70">
							<a href="dep_input.action">
								<img src="images/can_b_02.gif" border="0" /> 
							</a>
						</td>
					</tr>
				</table>
			</div>
			<!--"square-o-top"end-->
			<div class="square-order">
				<s:if test="#depList.size()==0">
					<center>
						<span style="font-size:20px;color:#96D34A;font-weight:bold">没有查找到满足条件的数据！</span>
					</center>
				</s:if>
				<s:else>
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
					<tr align="center"
						style="background:url(images/table_bg.gif) repeat-x;">
						<td width="13%" height="30">编号</td>
						<td width="13%">部门名称</td>
						<td width="16%">电话</td>
						<td width="16%">操作</td>
					</tr>
				<s:iterator value="depList">	
					<tr align="center" bgcolor="#FFFFFF">
						<td width="13%" height="30">${uuid}</td>
						<td>${name}</td>
						<td>${tele}</td>
						<td>
							<img src="images/icon_3.gif" /> 
							<span style="line-height:12px; text-align:center;"> 
								<s:a action="dep_input" cssClass="xiu">
									<s:param name="dm.uuid" value="uuid"/>
									修改
								</s:a>
							</span> 
							<img src="images/icon_04.gif" /> 
							<span style="line-height:12px; text-align:center;">
								<%-- 
								<s:a action="dep_delete" cssClass="xiu">
									<s:param name="dm.uuid" value="uuid"/>
									删除
								</s:a>
								 --%>
								<a href="javascript:void(0)" class="xiu" onclick="showMsg('删除部门信息将删除部门中的所有员工，是否进行删除？',${uuid})">删除</a>
								<!-- <a href="javascript:void(0)" class="xiu" onclick="showMsg('是否删除该项数据？当前部门删除后，所有部门内的员工将被删除，同时相关数据也将删除！',318)">删除</a> -->
							</span>
						</td>
					</tr>
				</s:iterator>	
				</table>
				<%@ include file="/tools/pages.jsp" %>
				</s:else>
			</div>
		</s:form>
	</div>
	<div class="content-bbg"></div>
</div>
