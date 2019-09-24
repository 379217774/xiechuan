<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="data_list">
		<div class="data_list_title">
			修改密码
		</div>
		<form action="password?action=change" method="post" onsubmit="return checkForm()">
			<div class="data_form" >
				<input type="hidden" id="studentId" name="studentId" value="${student.studentId }"/>
					<table align="center">
						<tr>
							<td><font color="red">*</font>原密码：</td>
							<td><input type="password" id="oldPassword"  name="oldPassword" value="${oldPassword }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>新密码：</td>
							<td><input type="password" id="newPassword"  name="newPassword" value="${newPassword }" style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>重复密码：</td>
							<td><input type="password" id="rPassword"  name="rPassword" value="${rPassword }" style="margin-top:5px;height:30px;" /></td>
						</tr>
					</table>
					<div align="center">
						<input type="submit" class="btn btn-primary" value="提交"/>
					</div>
					<div align="center">
						<font id="error" color="red">${error }</font>
					</div>
			</div>
		</form>
</div>