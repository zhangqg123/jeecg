<%@ page language="java" import="java.util.*" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@include file="/context/mytags.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>审批申请</title>
<t:base type="jquery,easyui,tools"></t:base>
</head>
<body style="overflow-y: hidden" scroll="no">
<t:formvalid formid="formobj" dialog="true" layout="table" action="auditController.do?completeTask">
	<table style="width: 600px;" cellpadding="0" cellspacing="1" class="formtable">
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">审批部门: </label></td>
			<td class="value" width="85%">
				${workApply.management}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">办事名称: </label></td>
			<td class="value" width="85%">
				${workApply.guideName}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">申请人: </label></td>
			<td class="value" width="85%">
				${workApply.dealPersion}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">证件号码: </label></td>
			<td class="value" width="85%">
				${workApply.idNumber}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">申报主体: </label></td>
			<td class="value" width="85%">
				${workApply.applySubject}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">法人代表: </label></td>
			<td class="value" width="85%">
				${workApply.legalRepresent}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">联系人: </label></td>
			<td class="value" width="85%">
				${workApply.contact}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">联系手机: </label></td>
			<td class="value" width="85%">
				${workApply.mobile}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">联系电话: </label></td>
			<td class="value" width="85%">
				${workApply.phone}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">地址: </label></td>
			<td class="value" width="85%">
				${workApply.address}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label">取件类型: </label></td>
			<td class="value" width="85%">
				${workApply.receiveType}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label"> 申报日期: </label></td>
			<td class="value" width="85%">
				${workApply.applyData}				
			</td>
		</tr>
		<tr>
			<td align="right" width="15%" nowrap><label class="Validform_label"> 是否同意: </label></td>
			<td class="value" width="85%">
<!--				<input id="keys" name="keys" type="hidden" value="deptLeaderPass"  />	
				<input id="values" name="values" class="inputxt"  value="true" datatype="s2-20">
				<input id="types" name="types" type="hidden" value="B">	-->
                
                <select name="deptLeaderPass" class="form-control input-sm" datatype="*" placeholder="请输选择">
					<option value=""></option>
					<option value="true">通过</option>
					<option value="false">未通过</option>
				</select>
				
				<input id="taskId" name="taskId" type="hidden" value="${taskId}">			
				<input id="businessKey" name="businessKey" type="hidden" value="${workApply.id}">			
			</td>
		</tr>
	</table>
</t:formvalid>
</body>