<%@ page language="java" pageEncoding="UTF-8"%>
<%@include file="../../taglibs.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>全部学生信息展示</title>
  </head>
  
  <body>
  	<script type="text/javascript">
  		function search(){
  			var formArray = $("#form").serializeArray();
  			$.ajax({
  			   type: "POST",
  			   url: "${ctx}/student/searchStudent.do",
  			   data: formArray,
  			   /* data: "stuName=张三", */
  			   success: function(msg){
  			     alert( "Data Saved: " + msg );
  			   }
  			});
  		}
  	</script>
  	<div class="jumbotron">
        <form id="form" action="${ctx}/student/searchStudent.do" method="post">
	  		<label>学生姓名:</label><input type="text" name="stuName"/>
	  		<label>性别:</label>
	  		<select name="sex">
	  			<option value="" selected="selected">请选择性别</option>
	  			<option value="2">男</option>
	  			<option value="1">女</option>
	  		</select>
	  		<label>开始时间:</label><input name="begindate" type="text" onClick="WdatePicker()"/>
	  		<label>结束时间:</label><input name="enddate" type="text" onClick="WdatePicker()"/>
	  		<!-- <input type="button" onclick="search()" class="btn btn-sm btn-primary" value="查询"/> -->
	  		<input type="submit" class="btn btn-sm btn-primary" value="查询"/>
  		</form>
	  	<div class="table-responsive"> 
			<table class="table table-striped table-bordered">
				<tr>
					<th>编号</th>
					<th>姓名</th>
					<th>性别</th>
					<th>年龄</th>
					<th>身份证号</th>
					<th>手机号码</th>
					<th>入学时间</th>
					<th>操作</th>
				</tr>
				<tbody>
					<c:forEach items="${stus}" var="stu">
						<tr>
							<td>${stu.stuNo}</td>
							<td>${stu.stuName}</td>
							<td>
								<c:if test="${stu.sex==2 }">男</c:if>
								<c:if test="${stu.sex==1 }">女</c:if>
							</td>
							<td>${stu.age}</td>
							<td>${stu.idCard}</td>
							<td>${stu.telphone}</td>
							<td><fmt:formatDate value="${stu.startingDate}" pattern="yyyy-MM-dd"/></td>
							<td>
								<a href="initStudent.do?stuNo=${stu.stuNo}"><button type="button" class="btn btn-warning">修改</button></a>
								<a href="deleteStudent.do?stuNo=${stu.stuNo}"><button type="button" class="btn btn-danger">删除</button></a>
							</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	    </div>
		<p><a href="../index.jsp" class="btn btn-primary btn-lg" role="button">返回首页 »</a></p>
	</div>
  </body>
</html>
