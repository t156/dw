<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>我的账号&nbsp;&nbsp;欧柏泰克</title>

<%@ include file="common/common.jsp" %>

<%@ include file="common/validate.jsp" %>
<script src="${pageContext.request.contextPath }/dw/js/common/common.js" type="text/javascript"></script>

	<style type="text/css>">
		.pwdTd{
			display: none;
		}
	</style>
<script type="text/javascript">
	
$(document).ready(function(){
	var inputFormValidate=$("#input_form").validate({
		rules: {
			email: {required: true, email: true, maxlength: 60},
		},
		messages: {
			email: {
				email: "格式不正确！",
				remote: "邮箱已存在"
			}
		},
		errorPlacement: function(error, element) {
			//error.appendTo(element.parent().parent());
			element.parent().append(error);
			//	$(element).css("borderColor","#C40000");
		}
	});

});

	
</script>

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
	
	<input type="hidden" id="id" name="id" value="">
	
	<div style="margin-top: 15px;">
		<div class="main-tabs-content bodyCenter">
			<div class="tab-content">
				<div class="tab-content-collectTab" style="text-align: left;">
					<a href="" class="nav_a">我的账号</a>
				</div>
			</div>
		</div>
	</div>
	<div style="clear: both;"></div>
	<div id="dwBody" >
		<div id="dwBodyContent" class="bodyCenter" style="">
		<div class="tab-content" style="background: #D9D9D9;padding: 0px 5px;">
				<div class="tab-content-collectTab icTab" style="text-align: left;">
					<a href="/dw/ic/user!myaccount.action" class="collectTab tabItem_1 active"><span class="collectTabItemLeft">&nbsp;</span><span>我的账号</span></a>
				</div>
		</div>
		<div id="dwBodyUser">
			<div class="surveyCollectMiddle">
				
				<div class="surveyCollectMiddleContent">
					<div style="padding: 25px 45px;overflow: auto;padding-top: 35px;">
							<div style="border-bottom: 1px solid #DFDFDF;padding: 5px;color: #666565;">账号信息</div>
							<div style="padding: 5px;color:#666565; ">
								<form id="input_form" action="/dw/ic/user!save.action" method="post" >
								<table class="ac-form-table">
									<tr>
										<td width="80" align="right">账号</td>
										<td class="ac-input-td"><input type="text" name="loginName" value="dwsurvey" readonly="readonly"  style="background: rgb(240, 240, 240);" > </td>
									</tr>
									<tr>
										<td width="80" align="right">邮箱</td>
										<td class="ac-input-td"><input type="text" id="email" name="email" value="huangwu@hopetech.com"> </td>
									</tr>
									<tr>
										<td width="80" align="right">手机号</td>
										<td class="ac-input-td"><input type="text" name="cellphone" value=""> </td>
									</tr>
									<tr>
										<td width="80" align="right">姓名</td>
										<td class="ac-input-td"><input type="text" name="name" value="dwsurvey"> </td>
									</tr>
									<tr>
										<td width="80" align="right">密码</td>
										<td class="ac-input-td"><a href="updatepassword" >修改密码</a> </td>
									</tr>
									<tr>
										<td></td>
										<td class="ac-input-td"> <button type="submit" class="sbtn25 sbtn25_1" > 保存修改 </button></td>
									</tr>
								</table>
								</form>
							</div>
					</div>
				</div>
			</div>
			
		</div>
		</div>
	</div>
<script type="text/javascript">

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