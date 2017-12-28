<%-- list.jsp --%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
			<span class="page_title">商品管理</span>
		</div>
	</div>
	<div class="content-text">
		<s:form action="goods_list" method="post"> 
			<div class="square-o-top">
				<table width="100%" border="0" cellpadding="0" cellspacing="0"
					style="font-size:14px; font-weight:bold; font-family:"黑体";">
					<tr>
						<td>供应商:</td>
						<td>
							<s:select name="gqm.gtm.sm.uuid" list="supplierList" listKey="uuid" listValue="name" headerKey="-1" headerValue="----请-选-择----" cssClass="kuan"></s:select>
						</td>
						<td height="30">商&nbsp;品&nbsp;名</td>
						<td><s:textfield name="gqm.name" size="14"/></td>
						<td>生产厂家</td>
						<td><s:textfield name="gqm.producer" size="14"/></td>
						<td>单&nbsp;&nbsp;&nbsp;&nbsp;位</td>
						<td><s:textfield name="gqm.unit" size="14"/></td>
						<td width="70"><a href="goods_input.action"><img src="images/can_b_02.gif" border="0" /> </a></td>
					</tr>
					<tr>
						<td height="30">进货价格</td>
						<td><s:textfield name="gqm.inPrice" size="14"/></td>
						<td>到</td>
						<td><s:textfield name="gqm.inPrice2" size="14"/></td>
						<td height="30">销售价格</td>
						<td><s:textfield name="gqm.outPrice" size="14"/></td>
						<td>到</td>
						<td><s:textfield name="gqm.outPrice2" size="14"/></td>
						<td><a id="query"> <img src="images/can_b_01.gif" border="0" /> </a></td>
					</tr>
				</table>
			</div>
			<!--"square-o-top"end-->
			<div class="square-order">
				<table width="100%" border="1" cellpadding="0" cellspacing="0">
					<tr align="center"
						style="background:url(images/table_bg.gif) repeat-x;">
						<td width="12%" height="30">供应商</td>
						<td width="12%">商品名</td>
						<td width="12%">生产厂家</td>
						<td width="12%">产地</td>
						<td width="12%">进货价格</td>
						<td width="12%">销售价格</td>
						<td width="12%">单位</td>
						<td width="16%">操作</td>
					</tr>
					<s:iterator value="goodsList">
						<tr align="center" bgcolor="#FFFFFF">
							<td width="13%" height="30">${gtm.sm.name}</td>
							<td>${name}</td>
							<td>${producer}</td>
							<td>${origin}</td>
							<td align="right">${inPriceView}&nbsp;元&nbsp;</td>
							<td align="right">${outPriceView}&nbsp;元&nbsp;</td>
							<td><a href="javascript:void(0)" class="unit">${unit}</a></td>
							<td>
								<img src="images/icon_3.gif" /> 
								<span style="line-height:12px; text-align:center;"> 
									<a href="./input.jsp" class="xiu">修改</a> 
								</span> 
								<img src="images/icon_04.gif" /> 
								<span style="line-height:12px; text-align:center;"> 
									<a href="javascript:void(0)" class="xiu" onclick="showMsg('是否删除该项数据？',318)">删除</a>
								</span>
							</td>
						</tr>
					</s:iterator>
				</table>
			</div>
		</s:form>
	</div>
	<div class="content-bbg"></div>
</div>
<%-- end of list.jsp --%>
