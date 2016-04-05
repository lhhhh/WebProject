<%@ page language="java" pageEncoding="utf-8"%>
<%@include file="taglibs.jsp" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>首页</title>
    <script type="text/javascript">
    	alert('${ctx}');
    </script>
  </head>
  <body>
     <div class="panel panel-default">
	     <div class="panel-heading">
	       <h3 class="panel-title">WebProject</h3>
	     </div>
	     <div class="panel-body">
	     	<a href="${ctx}/student/getAllStudent.do">
				<button type="button" class="btn btn-primary">查询全部学生</button>
			</a>
			<a href="${ctx}/student/initStudent.do">
				<button type="button" class="btn btn-primary">添加学生信息</button>
			</a>
	     </div>
    </div>
    <div class="panel panel-default">
	     <div class="panel-heading">
	       <h3 class="panel-title">WebProjectServer</h3>
	     </div>
	     <div class="panel-body">
	     	<a href="${ctx}/student/getAllStudent4Server.do">
				<button type="button" class="btn btn-primary">查询全部学生</button>
			</a>
			<a href="${ctx}/student/initStudent.do">
				<button type="button" class="btn btn-primary">添加学生信息</button>
			</a>
	     </div>
    </div>
  </body>
</html>
