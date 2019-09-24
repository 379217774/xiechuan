<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<div class="data_list">
		<div class="data_list_title">
		<c:choose>
			<c:when test="${student.studentId!=null }">
				修改学生信息
			</c:when>
			<c:otherwise>
				添加学生
			</c:otherwise>
		</c:choose>
		</div>
		<form action="student?action=save" method="post" onsubmit="return checkForm()">
			<div class="data_form" >
				<input type="hidden" id="studentId" name="studentId" value="${student.studentId }"/>
					<table align="center">
						<tr>
							<td><font color="red">*</font>学号：</td>
							<td><input type="text" id="userName"  name="userName" value="${student.userName }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>密码：</td>
							<td><input type="password" id="password"  name="password" value="${student.password }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>重复密码：</td>
							<td><input type="password" id="rPassword"  name="rPassword" value="${student.password }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>姓名：</td>
							<td><input type="text" id="name"  name="name" value="${student.name }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>性别：</td>
							<td>
								<select id="sex" name="sex" style="width: 90px;">
									<option value="">请选择...</option>
									<option value="男" ${student.sex eq "男"?'selected':'' }>男</option>
									<option value="女" ${student.sex eq "女"?'selected':'' }>女</option>
								</select>
							</td>
						</tr>
						<tr>
							<td><font color="red">*</font>宿舍楼：</td>
							<td>
								<select id="dormBuildId" name="dormBuildId" style="width: 90px;">
									<c:forEach var="dormBuild" items="${dormBuildList }">
										<option value="${dormBuild.dormBuildId }" ${student.dormBuildId==dormBuild.dormBuildId?'selected':'' }>${dormBuild.dormBuildName }</option>
									</c:forEach>
								</select>
							</td>
						</tr>
						<tr>
							<td><font color="red">*</font>寝室：</td>
							<td><input type="text" id="dormName"  name="dormName" value="${student.dormName }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
						<tr>
							<td><font color="red">*</font>联系电话：</td>
							<td><input type="text" id="tel"  name="tel" value="${student.tel }"  style="margin-top:5px;height:30px;" /></td>
						</tr>
					</table>
					<div align="center">
						<input type="submit" class="btn btn-primary" value="保存"/>
						&nbsp;<button class="btn btn-primary" type="button" onclick="javascript:window.location='student'">返回</button>
					</div>
					<div align="center">
						<font id="error" color="red">${error }</font>
					</div>
			</div>
		</form>
</div>