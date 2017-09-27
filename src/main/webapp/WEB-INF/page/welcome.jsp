<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>我的问卷&nbsp;&nbsp;欧柏泰克</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<%@ include file="common/common.jsp" %>
<link href="${pageContext.request.contextPath }/dw/js/plugs/jquery-ui-1.10.3.custom/css/mycss/jquery-ui-1.10.3.custom.css" rel="stylesheet" type="text/css" />
<!-- 新 Bootstrap 核心 CSS 文件 -->
<!-- <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap.min.css"> -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/dw/js/plugs/bootstrap-3.3.0-dist/dist/css/bootstrap.css">
<!-- 可选的Bootstrap主题文件（一般不用引入） -->
<!-- <link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.0/css/bootstrap-theme.min.css"> -->
<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
<!-- <script src="http://cdn.bootcss.com/bootstrap/3.3.0/js/bootstrap.min.js"></script> -->
<script src="${pageContext.request.contextPath }/dw/js/plugs/bootstrap-3.3.0-dist/dist/js/bootstrap.js"></script>
<!-- <link href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css" rel="stylesheet"> -->
<link href="${pageContext.request.contextPath }/dw/js/plugs/font-awesome-4.2.0/css/font-awesome.css" rel="stylesheet">




<style type="text/css">
.surveyLeftBtnGroup a{
	color: #5A9ECD;
}
.btn-group{
	/* border: 1px solid #D1D1D1; */
}
.btn-group a{
	/* border-radius: 0px; */
	/* border-color: white; */
}
.btn-group a:hover{
	background: #317BCF;
	color: white;
	border-color: #317BCF;
}
.btn-group>.btn:not(:first-child) {
	margin-left: -1px;
}
.contacts-table tr td{
	font-size: 16px! important;
}
.dialogBtn1{
	border:none;
	font-size: 1em;
	font-weight:bold;
  	cursor: pointer;
  	padding: 8px 10px;
}
.dialogBtn1 .ui-button-text {
    padding: .4em 1em;
    display: block;
    line-height: normal;
}
.dialogBtn1Cencel{
	background: none;
}
.dialogBtn1Cencel:hover{
	background: #f6f6f6;
}
button {
	outline: none;
}

.dialogMessage select, .dialogMessage input {
    padding: 5px;
    color: #333333;
    border: 1px solid #98C5C3;
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
<a href="/S3end/user.do">yonghu</a>
<a href="/S3end/sezi.do">设置</a>
<%@ include file="common/head.jsp" %>
	
	<input type="hidden" id="id" name="id" value="">
	<div style="clear: both;"></div>
	<div id="dwBody" style="margin-top: 15px;">
		<div id="dwBodyContent" class="bodyCenter" style="">
		<div id="dwBodyUser">
			<div class="surveyCollectMiddle">
				<div class="surveyCollectMiddleContent">
					<div style="padding: 25px 45px;overflow: auto;padding-top: 20px;">
							<div style="padding: 5px;color: #666565;letter-spacing: 2px;">
							所有问卷&nbsp;&nbsp;|&nbsp;&nbsp;
								<a href="/dw/design/my-survey-create!save.action" id="surveyAdd-a" style="outline: none;text-decoration: none;" ><i class="fa fa-plus " aria-hidden="true"></i>&nbsp;新建问卷</a>
							</div>

							<form action="/dw/design/my-survey.action" method="post" >
							<div class="contacts_search" style="padding: 5px;color:#666565;" >
								<div style="padding-left: 20px;padding-top: 8px;padding-bottom: 8px;">
									<span style="font-size: 14px;vertical-align: middle;">状态&nbsp;</span>
									<select name="surveyState" style="vertical-align: middle;">  <option value="">不限</option><option value="0">设计</option><option value="1">发布</option><option value="2">结束</option> </select>
									&nbsp;&nbsp;
									<span style="font-size: 14px;vertical-align: middle;">名称&nbsp;</span>
									<input type="text" class="inputS1" name="surveyName" value="">
									<input type="submit" value="查询" class="sbtn25 sbtn25_1" style="font-size: 16px;"/>
								</div>
								
							</div>
							</form>
							
							<div style="margin-top: 15px;">
							<!-- <div style="padding: 5px;color: #666565;text-align: right;">
								<a href="" class="export-contacts active"><span>&nbsp;</span>导出联系人</a>
							</div> -->
							<div style="padding: 5px;color:#666565; ">
								<table class="contacts-table" width="100%" cellpadding="0" cellspacing="0">
									<tr>
										<th style="text-align: center;" width="30"><!-- <input type="checkbox">  --></th>
										<th align="left" >问卷</th>
										<th align="left" width="100">创建者</th>
										<th align="left" width="200">创建时间</th>
										<th align="left" width="60">答卷</th>
										<th align="left" width="80">状态</th>
										<th align="center" width="220" style="padding-left: 10px;">操作</th>
									</tr>
									
									
									
									<tr>
										<td align="center">
											<input type="hidden" name='surveyId' value="ff8081815e7df7f9015e926b23bf0110">
										</td>
										<td align="left"><a target="_blank" href="/dw/wenjuan/fjp104is6.html" class="titleTag">this is good</a></td>
										<td align="left" width="100" >dwsurvey</td>
										<td align="left">
											2017年09月18日 08:37
										</td>
										<td align="left">1&nbsp;</td>
										<td align="left" >
											收集
										</td>
										<td align="left">
											<div class="btn-group surveyLeftBtnGroup">
											  <a class="btn btn-default" href="/dw/design/my-survey-design.action?surveyId=ff8081815e7df7f9015e926b23bf0110" title="设计"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
											  <a class="btn btn-default" href="/dw/design/my-collect.action?surveyId=ff8081815e7df7f9015e926b23bf0110" title="收集答卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-comments-o"></i></a>
											  <a class="btn btn-default" href="/dw/da/survey-report!defaultReport.action?surveyId=ff8081815e7df7f9015e926b23bf0110" title="分析报告" data-toggle="tooltip" data-placement="top" ><i class="fa fa-line-chart"></i></a>
											  <a class="btn btn-default copySurvey" href="#ff8081815e7df7f9015e926b23bf0110" title="复制一份" data-toggle="tooltip" data-placement="top" ><i class="fa fa-files-o"></i></a>
											  <a class="btn btn-default deleteSurvey" href="/dw/design/my-survey!delete.action?id=ff8081815e7df7f9015e926b23bf0110" title="删除问卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o fa-fw"></i></a>
											</div>&nbsp;
											<div class="btn-group" style="display: none;">
												<!-- <a class="btn btn-default" href="#"><i class="fa fa-eye"></i></a> -->
											    <a class="btn btn-default" href="#"><i class="fa fa-trash-o fa-fw"></i></a>
											</div>
										</td>
									</tr>
									
									<tr>
										<td align="center">
											<input type="hidden" name='surveyId' value="ff8081815e7df7f9015e83996c3100c8">
										</td>
										<td align="left"><a target="_blank" href="/dw/wenjuan/ma81eymozam.html" class="titleTag">请输入问卷标题</a></td>
										<td align="left" width="100" >dwsurvey</td>
										<td align="left">
											2017年09月15日 11:33
										</td>
										<td align="left">0&nbsp;</td>
										<td align="left" >
											设计
										</td>
										<td align="left">
											<div class="btn-group surveyLeftBtnGroup">
											  <a class="btn btn-default" href="/dw/design/my-survey-design.action?surveyId=ff8081815e7df7f9015e83996c3100c8" title="设计"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
											  <a class="btn btn-default" href="/dw/design/my-collect.action?surveyId=ff8081815e7df7f9015e83996c3100c8" title="收集答卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-comments-o"></i></a>
											  <a class="btn btn-default" href="/dw/da/survey-report!defaultReport.action?surveyId=ff8081815e7df7f9015e83996c3100c8" title="分析报告" data-toggle="tooltip" data-placement="top" ><i class="fa fa-line-chart"></i></a>
											  <a class="btn btn-default copySurvey" href="#ff8081815e7df7f9015e83996c3100c8" title="复制一份" data-toggle="tooltip" data-placement="top" ><i class="fa fa-files-o"></i></a>
											  <a class="btn btn-default deleteSurvey" href="/dw/design/my-survey!delete.action?id=ff8081815e7df7f9015e83996c3100c8" title="删除问卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o fa-fw"></i></a>
											</div>&nbsp;
											<div class="btn-group" style="display: none;">
												<!-- <a class="btn btn-default" href="#"><i class="fa fa-eye"></i></a> -->
											    <a class="btn btn-default" href="#"><i class="fa fa-trash-o fa-fw"></i></a>
											</div>
										</td>
									</tr>
									
									<tr>
										<td align="center">
											<input type="hidden" name='surveyId' value="ff8081815e7df7f9015e837440430082">
										</td>
										<td align="left"><a target="_blank" href="/dw/wenjuan/8ajun4v.html" class="titleTag">请输入问卷标题</a></td>
										<td align="left" width="100" >dwsurvey</td>
										<td align="left">
											2017年09月15日 10:53
										</td>
										<td align="left">1&nbsp;</td>
										<td align="left" >
											收集
										</td>
										<td align="left">
											<div class="btn-group surveyLeftBtnGroup">
											  <a class="btn btn-default" href="/dw/design/my-survey-design.action?surveyId=ff8081815e7df7f9015e837440430082" title="设计"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
											  <a class="btn btn-default" href="/dw/design/my-collect.action?surveyId=ff8081815e7df7f9015e837440430082" title="收集答卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-comments-o"></i></a>
											  <a class="btn btn-default" href="/dw/da/survey-report!defaultReport.action?surveyId=ff8081815e7df7f9015e837440430082" title="分析报告" data-toggle="tooltip" data-placement="top" ><i class="fa fa-line-chart"></i></a>
											  <a class="btn btn-default copySurvey" href="#ff8081815e7df7f9015e837440430082" title="复制一份" data-toggle="tooltip" data-placement="top" ><i class="fa fa-files-o"></i></a>
											  <a class="btn btn-default deleteSurvey" href="/dw/design/my-survey!delete.action?id=ff8081815e7df7f9015e837440430082" title="删除问卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o fa-fw"></i></a>
											</div>&nbsp;
											<div class="btn-group" style="display: none;">
												<!-- <a class="btn btn-default" href="#"><i class="fa fa-eye"></i></a> -->
											    <a class="btn btn-default" href="#"><i class="fa fa-trash-o fa-fw"></i></a>
											</div>
										</td>
									</tr>
									
									<tr>
										<td align="center">
											<input type="hidden" name='surveyId' value="ff8081815e7df7f9015e8371748f0072">
										</td>
										<td align="left"><a target="_blank" href="/dw/wenjuan/5b9164qqb.html" class="titleTag">obtk</a></td>
										<td align="left" width="100" >dwsurvey</td>
										<td align="left">
											2017年09月15日 10:50
										</td>
										<td align="left">7&nbsp;</td>
										<td align="left" >
											收集
										</td>
										<td align="left">
											<div class="btn-group surveyLeftBtnGroup">
											  <a class="btn btn-default" href="/dw/design/my-survey-design.action?surveyId=ff8081815e7df7f9015e8371748f0072" title="设计"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
											  <a class="btn btn-default" href="/dw/design/my-collect.action?surveyId=ff8081815e7df7f9015e8371748f0072" title="收集答卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-comments-o"></i></a>
											  <a class="btn btn-default" href="/dw/da/survey-report!defaultReport.action?surveyId=ff8081815e7df7f9015e8371748f0072" title="分析报告" data-toggle="tooltip" data-placement="top" ><i class="fa fa-line-chart"></i></a>
											  <a class="btn btn-default copySurvey" href="#ff8081815e7df7f9015e8371748f0072" title="复制一份" data-toggle="tooltip" data-placement="top" ><i class="fa fa-files-o"></i></a>
											  <a class="btn btn-default deleteSurvey" href="/dw/design/my-survey!delete.action?id=ff8081815e7df7f9015e8371748f0072" title="删除问卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o fa-fw"></i></a>
											</div>&nbsp;
											<div class="btn-group" style="display: none;">
												<!-- <a class="btn btn-default" href="#"><i class="fa fa-eye"></i></a> -->
											    <a class="btn btn-default" href="#"><i class="fa fa-trash-o fa-fw"></i></a>
											</div>
										</td>
									</tr>
									
									<tr>
										<td align="center">
											<input type="hidden" name='surveyId' value="ff8081815e7df7f9015e831f615c0030">
										</td>
										<td align="left"><a target="_blank" href="/dw/wenjuan/f2ttdc.html" class="titleTag">请输入问卷标题</a></td>
										<td align="left" width="100" >dwsurvey</td>
										<td align="left">
											2017年09月15日 09:20
										</td>
										<td align="left">0&nbsp;</td>
										<td align="left" >
											设计
										</td>
										<td align="left">
											<div class="btn-group surveyLeftBtnGroup">
											  <a class="btn btn-default" href="/dw/design/my-survey-design.action?surveyId=ff8081815e7df7f9015e831f615c0030" title="设计"data-toggle="tooltip" data-placement="top" ><i class="fa fa-pencil-square-o"></i></a>
											  <a class="btn btn-default" href="/dw/design/my-collect.action?surveyId=ff8081815e7df7f9015e831f615c0030" title="收集答卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-comments-o"></i></a>
											  <a class="btn btn-default" href="/dw/da/survey-report!defaultReport.action?surveyId=ff8081815e7df7f9015e831f615c0030" title="分析报告" data-toggle="tooltip" data-placement="top" ><i class="fa fa-line-chart"></i></a>
											  <a class="btn btn-default copySurvey" href="#ff8081815e7df7f9015e831f615c0030" title="复制一份" data-toggle="tooltip" data-placement="top" ><i class="fa fa-files-o"></i></a>
											  <a class="btn btn-default deleteSurvey" href="/dw/design/my-survey!delete.action?id=ff8081815e7df7f9015e831f615c0030" title="删除问卷" data-toggle="tooltip" data-placement="top" ><i class="fa fa-trash-o fa-fw"></i></a>
											</div>&nbsp;
											<div class="btn-group" style="display: none;">
												<!-- <a class="btn btn-default" href="#"><i class="fa fa-eye"></i></a> -->
											    <a class="btn btn-default" href="#"><i class="fa fa-trash-o fa-fw"></i></a>
											</div>
										</td>
									</tr>
									
									
									
									
								</table>
								<div style="padding-top: 15px;text-align: center;">
									<div class="btn-group">
										
										
										
											
												<a href="/dw/design/my-survey.action?page.pageNo=1" class="btn btn-default" style="background: #D3DEED;">1</a>
												
											
										
										
										
										
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

	currentMenu("mysurvey");

	$("select[name='surveyState']").val("");

var options={
		animation:true,
		delay:100,
		container:"body",
		trigger:'hover' //触发tooltip的事件
	};
$('a[data-toggle=tooltip]').tooltip(options);

//delete
$(".deleteSurvey").click(function(){
	if(confirm("确认删除吗？")){
		var th=$(this);
		var url=$(this).attr("href");
		var data="";
		$.ajax({
			url:url,
			data:data,
			type:"post",
			success:function(msg){
				if(msg==="true"){
					th.parents("tr").hide("slow");
					th.parents("tr").remove();
				}else{
					alert("删除失败，未登录或没有权限！");
				}
			}
		});
	}
	return false;
});

$(".copySurvey").click(function(){

	var surveyId=$(this).parents("tr").find("input[name='surveyId']").val();
	var titleValue=$(this).parents("tr").find(".titleTag").text();
	var model_groupId1=$(this).parents("tr").find("input[name='groupId1']").val();
	var model_groupId2=$(this).parents("tr").find("input[name='groupId2']").val();

	$("body").append("<div id=\"myDialogRoot\"><div class='dialogMessage' style='padding-top:40px;margin-left:20px;padding-bottom:0px;'>"+
			"<div>复制标题：<input id='surTitleTemp' type='text' style='padding:3px;width:320px;color:rgb(14, 136, 158);' value=''></div></div></div>");

	var myDialog=$( "#myDialogRoot" ).dialog({
		width:500,
		height:220,
		autoOpen: true,
		modal:true,
		position:["center","center"],
		title:"复制问卷、表单",
		resizable:false,
		draggable:false,
		closeOnEscape:false,
		show: {effect:"blind",direction:"up",duration: 500},
		hide: {effect:"blind",direction:"left",duration: 200},
		buttons: {
			"OK":{
				text: "确认复制",
				addClass:'dialogMessageButton dialogBtn1',
				click: function() {
					//执行发布
					var surveyName=$("#surTitleTemp").val();
					surveyName=optionValue=escape(encodeURIComponent(surveyName));

					var params="surveyName="+surveyName;
					params+="&fromBankId="+surveyId;
					window.location.href="/dw/design/my-survey-design!copySurvey.action?"+params;
				}
			},
			"CENCEL":{
				text: "取消",
				addClass:"dialogBtn1 dialogBtn1Cencel",
				click: function() {
					$( this ).dialog( "close" );
				}
			}
		},
		open:function(event,ui){
			$(".ui-dialog-titlebar-close").hide();
			$("#surTitleTemp").val(titleValue+"－副本");
		},
		close:function(event,ui){
			$("#myDialogRoot").remove();
		}
	});
});

$("#surveyAdd-a").click(function(){
	
	var surveyId=$(this).parents("tr").find("input[name='surveyId']").val();
	var titleValue=$(this).parents("tr").find(".titleTag").text();
	

	
	$("body").append("<div id=\"myDialogRoot\"><div class='dialogMessage' style='padding-top:40px;margin-left:20px;padding-bottom:0px;'>"+
			"<div>问卷标题：<input id='surTitleTemp' type='text' style='padding:5px;width:320px;color:rgb(14, 136, 158);' value=''></div></div></div>");

	var myDialog=$( "#myDialogRoot" ).dialog({
		width:500,
		height:220,
		autoOpen: true,
		modal:true,
		position:["center","center"],
		title:"新建问卷、表单",
		resizable:false,
		draggable:false,
		closeOnEscape:false,
		show: {effect:"blind",direction:"up",duration: 500},
		hide: {effect:"blind",direction:"left",duration: 200},
		buttons: {
			"OK":{
	            text: "确认新建",
	            addClass:'dialogMessageButton dialogBtn1',
	            click: function() {
	                //执行发布
	                var surveyName=$("#surTitleTemp").val();
	                surveyName=optionValue=escape(encodeURIComponent(surveyName));
	                
	                var params="surveyName="+surveyName;
	            	window.location.href="newdiaowen?"+params;
	            }
			},
			"CENCEL":{
	            text: "取消",
	            addClass:"dialogBtn1 dialogBtn1Cencel",
	            click: function() {
	              $( this ).dialog( "close" );
	            }
			}
		},
		open:function(event,ui){
			$(".ui-dialog-titlebar-close").hide();
			$("#surTitleTemp").val(titleValue+"");
		},
		close:function(event,ui){
			$("#myDialogRoot").remove();
		}
	});
	return false;
});


function setSelectText(el) {
    try {
        window.getSelection().selectAllChildren(el[0]); //全选
        window.getSelection().collapseToEnd(el[0]); //光标置后
    } catch (err) {
        //在此处理错误
    }
}


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