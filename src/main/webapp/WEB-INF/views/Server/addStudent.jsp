<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../../../taglibs.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
  <head>
    <title><c:if test="${!empty stu}">修改学生信息</c:if> <c:if test="${empty stu}">添加学生信息</c:if></title>
    <style type="text/css">
    	.div1 { width:50%;float:left; }
    	.right{ float:right;}
    </style>
  </head>
  <body>
  <script type="text/javascript">
  		function tijiao(){
  			if($("#stuNo").val()=="" && 
  					$("#stuName").val()=="" && 
  					$("#sex").val()=="" && 
  					$("#age").val()=="" && 
  					$("#idCard").val()=="" && 
  					$("#telphone").val()=="" && 
  					$("#startingDateStr").val()==""){
  				alert("请把数据填写完整!!");
  			}
  			
  			$("#form").submit();
  		}
  </script>
  	<form id="form"  method="post" <c:if test="${!empty stu}">action="updateStudent4Server.do"</c:if> <c:if test="${empty stu}">action="addStudent4Server.do"</c:if>>
		<table class="table table-condensed">
			<p><a href="${ctx}/index.jsp" class="btn btn-primary btn-sm" role="button">返回首页 »</a></p>
            <tbody>
              <tr>
                <td><label class="right">学生编号:</label></td>
                <td><input type="text" id="stuNo" name="stuNo" value="${stu.stuNo}" <c:if test="${!empty stu}">readonly="readonly"</c:if> /></td>
              </tr>
              <tr>
                <td><label class="right">学生姓名:</label></td>
                <td><input type="text" id="stuName" name="stuName" value="${stu.stuName}"/></td>
              </tr>
              <tr>
                <td><label class="right">性别:</label></td>
                <td><input type="radio" <c:if test="${stu.sex==0}">checked="true"</c:if> name="sex" value="2"/>男<input type="radio" <c:if test="${stu.sex==1}">checked="true"</c:if> name="sex" value="1"/>女</td>
              </tr>
              <tr>
                <td><label class="right">年龄:</label></td>
                <td><input type="text" id="age" name="age" value="${stu.age}"/></td>
              </tr>
              <tr>
                <td><label class="right">身份证号:</label></td>
                <td><input type="text" id="idCard" name="idCard" value="${stu.idCard}"/></td>
              </tr>
              <tr>
                <td><label class="right">手机号码:</label></td>
                <td><input type="text" id="telphone" name="telphone" value="${stu.telphone}"/></td>
              </tr>
              <tr>
                <td><label class="right">入学时间:</label></td>
                <td><input id="startingDateStr" name="startingDateStr" type="text" onClick="WdatePicker()" value="<fmt:formatDate value='${stu.startingDate}' pattern='yyyy-MM-dd hh:mm:ss'/>"/></td>
              </tr>
              <tr>
              	<td>
		          <div class="right"><input type="button" onclick="tijiao()" value="提交" class="btn btn-sm btn-primary"/></div>
              	</td>
              </tr>
            </tbody>
          </table>
	</form>
  </body>
</html>
