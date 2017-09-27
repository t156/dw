<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的账号&nbsp;&nbsp;欧柏泰克</title>

<%@ include file="common/common.jsp" %>

<%@ include file="common/validate.jsp" %>

<script type="text/javascript">
	
$(document).ready(function(){
	$("#inputForm").validate({
		rules:{
			loginName:{
				required:true,
				remote:{
					url: "/dw/sy/user/user-admin!checkLoginNamelUn.action",     //后台处理程序
					type: "post",  //数据发送方式
					data: {   //要传递的数据
						loginName: function() { return $("input[name='loginName']").val(); },
						id:function(){ return $("input[name='id']").val(); }
					}
				}
			},
			email:{
				required:true,
				email:true,
				//remote:'/dw/sy/yb/yang-ben!checkEmailUn.action'
				remote:{
						url: "/dw/sy/user/user-admin!checkEmailUn.action",     //后台处理程序
						type: "post",  //数据发送方式
						data: {   //要传递的数据
							email: function() { return $("input[name='email']").val(); },
							id:function(){ return $("input[name='id']").val(); }
						}
					}
			},
			name:{required:true},
			pwd:{required:true,minlength:6,maxlength:40},
		},
		errorPlacement: function(error, element) {
		    //error.appendTo(element.parent().parent());
			 element.parent().append(error);
		}
	});
	
	$("#pwdEdit").click(function(){
		var thTd=$(this).parent();
		$(this).remove();
		thTd.append("<input type=\"password\" name=\"pwd\" value=\"\" id=\"pwd\">");
		return false;
	});
});

	
</script>
<style type="text/css">
.ac-input-td input,.ac-input-td select{
	padding: 4px! important;
	font-size: 14px;
}
.red-color{
	color: red;
}
</style>

<link href="${pageContext.request.contextPath }/dw/css/dw-user.css" rel="stylesheet" type="text/css" />
<link rel="icon" href="/favicon.ico" type="image/x-icon" />
</head>
<body>
<div id="wrap" >
	<input type="hidden" id="ctx" name="ctx" value="/dw">

<script type="text/javascript" >
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?ebe23eb396f5a803e26ea4bd102a8b0f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>
<%@ include file="common/head.jsp" %>
	
	
	<div style="margin-top: 15px;">
		
	</div>
	<div style="clear: both;"></div>
	<div id="dwBody" >
		<div id="dwBodyContent" class="bodyCenter" style="">
		
		<div id="dwBodyUser">
			<div class="surveyCollectMiddle">
				
				<form id="inputForm" action="/dw/sy/user/nosm/user-admin!save.action" method="post" >
				<input type="hidden" name="id" value="" >
				<div class="surveyCollectMiddleContent">
					<div style="padding: 25px 45px;overflow: auto;padding-top: 35px;">
							<div style="border-bottom: 1px solid #DFDFDF;padding: 5px;color: #666565;">账号信息</div>
							<div style="padding: 5px;color:#666565; ">
								<table width="100%">
									<tr>
										<td valign="top" align="left" >
											<table class="ac-form-table">
												<tr>
													<td width="80" align="right"><span class="red-color">*&nbsp;</span>昵称</td>
													<td class="ac-input-td"><input type="text"  name="name" value=""  > </td>
												</tr>
												<tr>
													<td width="80" align="right"><span class="red-color">*&nbsp;</span>登录名</td>
													<td class="ac-input-td"><input type="text"  name="loginName" value=""  > </td>
												</tr>
												<tr>
													<td width="80" align="right"><span class="red-color">*&nbsp;</span>邮箱</td>
													<td class="ac-input-td"><input type="text"  name="email" value="" > </td>
												</tr>

												
												<tr>
													<td width="80" align="right"><span class="red-color">*&nbsp;</span>登录密码</td>
													<td class="ac-input-td"><input type="password" name="pwd" value="" id="pwd">
													</td>
												</tr>
												
												
											</table>
										</td>
									</tr>
									<!-- <tr>
										<td>
										<table class="ac-form-table">
											<tr>
													<td width="80" align="right">地址</td>
													<td class="ac-input-td"><input type="text" > </td>
												</tr>
											</table>
										</td>
									</tr> -->
									<tr>
										<td height="50"><input type="submit" value="保存修改" class="sbtn25 sbtn25_1" style="margin-left: 125px;"> </td>
										<td class="ac-input-td"> </td>
									</tr>
								</table>
							</div>
							
					</div>
				</div>
				</form>
				
			</div>
			
		</div>
		</div>
	</div>
<script type="text/javascript">
$("input[name='status'][value='1']").prop("checked",true);
</script>

	
	
	<div class="dw_foot" style="padding-top:20px;">
		<div class="dw_footcopy" style="font-size: 16px;color: gray;"><p style="margin-bottom: 6px;">邮箱：huang_wu1@163.com&nbsp;&nbsp;&nbsp;电话：0731-88720108&nbsp;&nbsp;&nbsp;<a href="/" style="color: gray;font-size: 16px;">湘ICP备13050030号-3</a></p></div>

		<!-- 必须保留声明 start -->
		<div class="footer-copyright" style="color: gray;padding-top: 0px;font-size: 16px;padding-bottom: 16px;">
			Powered by <a href="http://www.dwsurvey.net" style="text-decoration: none;color: gray;">DWSurvey</a>
			&nbsp;&nbsp;&nbsp;Copyright © 2012-2017
			<a href="http://www.diaowen.net" style="text-decoration: none;color: rgb(53, 117, 136);">欧柏泰克</a>
		</div>
		<!-- 必须保留声明 end -->
	</div>
	
	
	</div>
	<script type="text/javascript" >
var _hmt = _hmt || [];
(function() {
  var hm = document.createElement("script");
  hm.src = "//hm.baidu.com/hm.js?ebe23eb396f5a803e26ea4bd102a8b0f";
  var s = document.getElementsByTagName("script")[0]; 
  s.parentNode.insertBefore(hm, s);
})();
</script>


<script type="text/javascript">
	resizeBodyWidth();
</script>
</body>
</html>