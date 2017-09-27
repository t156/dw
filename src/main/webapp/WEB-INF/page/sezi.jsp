<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>系统设置&nbsp;&nbsp;欧柏泰克</title>

<%@ include file="common/common.jsp" %>


<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<link href="${pageContext.request.contextPath }/dw/js/plugs/uploadify-v3.1/uploadify.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="${pageContext.request.contextPath }/dw/js/plugs/uploadify-v3.1/jquery.uploadify-3.1.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath }/dw/js/dw/uploadify.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<script type="text/javascript">
$(document).ready(function(){

	currentMenu("systemset");

	binduploadImg("loginBgfile","loginBgfileQueueid","loginBgfileImgPath","上传");
	
	$("#login_bg_div img").hover(function(){
		$(this).addClass("active_img_hover");
	},function(){
		$(this).removeClass("active_img_hover");
	});
	
	$("#login_bg_div img").click(function(){
		$("#login_bg_div img").removeClass("active_img");
		$(this).addClass("active_img");
		$("input[name='loginBgImg']").val($(this).attr("src").replace("/dw",""));
	});
	
	/* $("#useLogo_checked").change(function(){
		return false;
	}); */
	
	$("#login_bg_div img").removeClass("active_img");
	$("#login_bg_div img[src='${pageContext.request.contextPath }/dw/images/style-model/login_bg/6.jpg']").addClass("active_img");
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
#login_bg_div img{
	padding: 6px;
	border: 1px solid transparent;
	cursor: pointer;
}
.active_img,.active_img_hover{
	border: 1px solid #43AB75! important;
	padding: 6px;
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
	
	<input type="hidden" id="id" name="id" value="">
	
	<div style="margin-top: 15px;">
	</div>
	<div style="clear: both;"></div>
	<div id="dwBody" >
		<div id="dwBodyContent" class="bodyCenter" style="">
		
		<div id="dwBodyUser">
			<div class="surveyCollectMiddle">
				
				<form id="inputForm" action="/dw/sy/system/sys-property!save.action" method="post" >
				<div class="surveyCollectMiddleContent">
					<div style="padding: 25px 45px;overflow: auto;padding-top: 12px;">
							
							<div style="padding: 5px;color: #666565;letter-spacing: 2px;font-size: 18px;">
								系统设置
							
								
								
								
							</div>
							
							<div style="padding: 5px;color:#666565;border: 1px solid #DFDFDF;border-radius: 5px;margin-top: 15px;">
								
								
								<table width="100%">
									<tr>
										<td valign="top" align="left" width="500">
											<table class="ac-form-table">
												<tr>
													<td width="80" align="right">管理员邮箱</td>
													<td class="ac-input-td"><input type="text" name="adminEmail" value="huang_wu1@163.com" /> </td>
												</tr>
												<tr>
													<td width="80" align="right">电话</td>
													<td class="ac-input-td"><input type="text" name="adminTelephone" value="0731-88720108" /> </td>
												</tr>
												<tr>
													<td width="80" align="right" >备案代码</td>
													<td class="ac-input-td"><input type="text" name="icpCode" value="湘ICP备13050030号-3"> </td>
												</tr>
												
											</table>
										</td>
										<td valign="top" align="left" >
											<table class="ac-form-table">
												<tr>
												<td width="80" align="right" valign="top">登录背景图</td>
													<td class="ac-input-td">
														<div class="upResImg">
					                                	
					                                	<span id="loginBgimgfilename"></span>
					                                	<input type="file" id="loginBgfile" name="loginBgfile" />
					                                	<span class="uploadifySpan" style="line-height:26px;"><br/>请上传超清1024*968图片！</span>
					                                	<div id="loginBgfileQueueid" ></div>
														</div>
														<div>点击选择背景图或上传自定义的背景图</div>
														<div id="login_bg_div">
															<img class="active_img" src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/8.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/9.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/10.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/2.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/3.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/4.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/5.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/6.jpg" style="opacity: 1;" width="60" >
															<img src="${pageContext.request.contextPath }/dw/images/style-model/login_bg/7.jpg" style="opacity: 1;" width="60" >
															
																
																
																<img src="/dw" style="opacity: 1;display: none;" width="60" id="loginBgImgSrc" >
																
															
															<input type="hidden" id="loginBgfileImgPath" name="loginBgImg" value="/images/style-model/login_bg/6.jpg" >
														</div>
													</td>
												</tr>
												
											</table>
										</td>
									</tr>
									<tr>
										<td height="50">
											<input type="submit" value="保存修改" class="sbtn25 sbtn25_0" style="margin-left: 125px;">
											<input type="button" value="放弃修改" class="sbtn24 sbtn24_1" style="margin-left: 35px;">
										</td>
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