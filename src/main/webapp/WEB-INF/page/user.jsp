<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户管理&nbsp;&nbsp;欧柏泰克</title>

<%@ include file="common/common.jsp" %>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="${pageContext.request.contextPath }/dw/js/plugs/bootstrap-3.3.0-dist/dist/css/bootstrap.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<!-- <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css"> -->
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<!-- <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<script src="${pageContext.request.contextPath }/dw/js/plugs/bootstrap-3.3.0-dist/dist/js/bootstrap.js"></script>
<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
<link href="${pageContext.request.contextPath }/dw/js/plugs/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet">


<script type="text/javascript">
	
$(document).ready(function(){
	currentMenu("usermanager");
	$(".checkboxAll").unbind();
	$(".checkboxAll").change(function(){
		if($(this).prop("checked")){
			$(".quItemCheckbox").prop("checked",true);
		}else{
			$(".quItemCheckbox").prop("checked",false);
		}
	});
	
	$(".quItemCheckbox").change(function(){
		var noCheckeds=$(".quItemCheckbox").not(":checked");
		if(noCheckeds[0]){
			$(".checkboxAll").prop("checked",false);
		}else{
			$(".checkboxAll").prop("checked",true);
		}
	});

	
});

	
</script>
<style type="text/css">
.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default{
	background: #EFEFEF;
}
.usGroupUl{
	list-style: none;
	padding: 5px;
}
.usGroupUl li{
	list-style: none;
	font-size: 14px;
}
.usGroupUl li a{
	color: #333;
}
.new-dialog .ui-dialog-buttonset button{
	padding: 5px 10px;
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
	<a href="/S3end/adddiaowen.do">wenjuan</a>
	<input type="hidden" id="id" name="id" value="">
	
	<div style="clear: both;"></div>
	<div id="dwBody" style="margin-top: 15px;" >
		<div id="dwBodyContent" class="bodyCenter" style="">
		<div id="dwBodyUser">
			<div class="surveyCollectMiddle">
				
				<div class="surveyCollectMiddleContent">
					<div style="padding: 25px 45px;overflow: auto;padding-top: 12px;">
							<div style="padding: 5px;color: #666565;letter-spacing: 2px;font-size: 18px;">账号</div>
							
							<div class="contacts_search" style="padding: 5px;color:#666565;margin-top: 15px;" >
								<form action="/dw/sy/user/user-admin.action" method="post">
								<div style="padding-left: 30px;padding-top: 8px;padding-bottom: 8px;">
										<span style="font-size: 14px;vertical-align: middle;">状态&nbsp;</span>
										<select name="status" style="vertical-align: middle;">
											<option value="">不限</option>
											<option value="2">可用</option>
											<option value="0">禁用</option>
										</select>&nbsp;&nbsp;
									<span style="font-size: 14px;vertical-align: middle;">用户名&nbsp;</span>
									<input type="text"  name="loginName" value="" class="inputS1"/>&nbsp;&nbsp;
									<input type="submit" value="查询" class="sbtn25 sbtn25_1" style="font-size: 16px;"/>
									
									<div style="padding: 5px;color: #666565;text-align: right;float: right;margin-right: 20px;">
										<a href="addusers" class="user-plus active"><i class="fa fa-plus " aria-hidden="true"></i>&nbsp;添加账号</a>
									</div>
								</div>
								</form>
							</div>
							
							<div style="margin-top: 15px;">
							
							<div style="padding: 5px;color:#666565; ">
								
								<div style="">
									<table class="contacts-table" width="100%" cellpadding="0" cellspacing="0">
									<tr>
										<th style="text-align: center;" width="30"><!-- <input type="checkbox" class="checkboxAll">  --></th>
										<th align="left">登录名</th>
										<!-- <th align="left" >邮箱</th> -->
										<th align="left" width="200">创建时间</th>
										<th align="left" width="200">最后登录时间</th>
										<th align="left"  width="80">状态</th>
										<th align="center" style="text-align: center;" width="160">操作</th>
									</tr>

										
											

												
													<tr>
														<td align="center"></td>
														<td align="left">dwsurvey</td>
														
														<td align="left">2013年03月21日 21:15</td>
														<td align="left">2013年03月21日 21:15</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=1" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=1" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">test</td>
														
														<td align="left">2017年09月14日 09:40</td>
														<td align="left">2017年09月14日 09:40</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e7e0b2df60000" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e7e0b2df60000" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">xpf@qq.com</td>
														
														<td align="left">2017年09月15日 10:03</td>
														<td align="left">2017年09月15日 10:03</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e8346d00b0032" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e8346d00b0032" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">jx@38.com</td>
														
														<td align="left">2017年09月15日 10:12</td>
														<td align="left">2017年09月15日 10:12</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e834eca760041" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e834eca760041" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">ceshi</td>
														
														<td align="left">2017年09月15日 10:31</td>
														<td align="left">2017年09月15日 10:31</td>
														<td align="left">不可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e8360dcaf0070" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e8360dcaf0070" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">ceshi02</td>
														
														<td align="left">2017年09月15日 10:33</td>
														<td align="left">2017年09月15日 10:33</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e83624f4e0071" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e83624f4e0071" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">lz</td>
														
														<td align="left">2017年09月15日 11:15</td>
														<td align="left">2017年09月15日 11:15</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e8388546c00a2" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e8388546c00a2" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">zw</td>
														
														<td align="left">2017年09月15日 11:18</td>
														<td align="left">2017年09月15日 11:18</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e838b9f3c00a8" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e838b9f3c00a8" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">liuzhuo</td>
														
														<td align="left">2017年09月15日 11:21</td>
														<td align="left">2017年09月15日 11:21</td>
														<td align="left">可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e838e266800a9" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e838e266800a9" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												
													<tr>
														<td align="center"></td>
														<td align="left">elvenz</td>
														
														<td align="left">2017年09月15日 11:22</td>
														<td align="left">2017年09月15日 11:22</td>
														<td align="left">不可用</td>
														<td align="center">
															<a class="btn btn-default" href="/dw/sy/user/nosm/user-admin!input.action?id=ff8081815e7df7f9015e838f505500ab" title="编辑"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
															<a class="btn btn-default disUser_a" href="/dw/sy/user/nosm/user-admin!delete.action?id=ff8081815e7df7f9015e838f505500ab" title="禁用"data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o" aria-hidden="true"></i></a>
														</td>
													</tr>
												

											
											
										

								</table>
								
								<div style="padding-top: 15px;text-align: center;">
									<div class="btn-group">
										
										
										
											
												<a href="/dw/sy/user/user-admin.action?page.pageNo=1" class="btn btn-default" style="background: #D3DEED;">1</a>
												
											
										
											
												
												<a href="/dw/sy/user/user-admin.action?page.pageNo=2" class="btn btn-default">2</a>
											
										
										
										
											<a href="/dw/sy/user/user-admin.action?page.pageNo=2" class="btn btn-default">&gt;</a>
										
										
									</div>
								</div>
								
								</div>
								
							</div>
							</div>
						
					</div>
					
				</div>
			</div>
			
		</div>
		</div>
	</div>

	
	
<script type="text/javascript">
$(".disUser_a").click(function(){
	var thVal=$(this).text();
	var th=$(this);
	if(confirm("确定要删除吗？")){
		var url=$(this).attr("href");
		var data="";
		$.ajax({
			url:url,
			data:data,
			type:'post',
			success:function(msg){
				if(msg=="true"){
					$(th).parents("tr").remove();
					/* if(thVal=="禁用"){
						$(th).text("启用");
						$(th).parents("tr").find("td:eq(4)").text("不可用");
					}else{
						$(th).text("禁用");
						$(th).parents("tr").find("td:eq(4)").text("可用");
					} */
				}
			}
		});
	}
	//delete
	return false;
});

$("select[name='status']").val("");

resizeBodyWidth();
$("a").attr("hidefocus",true);

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