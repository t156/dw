<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<div id="header" >
		<div id="headerCenter"  class="bodyCenter">
			<div class="header_Item header_logo">
			
			<a href="/dw"><img alt="" src="${pageContext.request.contextPath }/dw/images/logo/LOGO.png" align="middle" height="46" ><span class="titleTempSpan">OSS</span></a> 
			</div>
			
			
			
				<div class="header_Item header_menu">
					<ul>
					
					<li><a href="login" id="mysurvey">问卷</a></li>
						
					<li><a href="users" id="usermanager">用户</a></li>
					<li><a href="sezi" id="systemset">设置</a></li>
						
					<li><a href="#">帮助</a></li>
					</ul>
				</div>
				<div class="header_Item header_user" style="float: right;margin-top: 12px;position: relative;zoom: 1;z-index: 165;">
					<a href="#" class="clickHideUserMenu">
						<span class="head_use_name">
						dwsurvey
						</span>
						<span class="header_user_icon">&nbsp;</span>
					</a>
					<div class="a-w-sel a-w-sel-head" style="">
		            	<div class="w-sel" style="margin-top: 16px;">
		                	<div class="selc">
		                    	<div class="selcc tbtag">
		                            <div class="seli"><a class="nx-1" href="password">修改密码</a></div>
		                            <div class="seli"><a class="nx-7" href="http://support.diaowen.net/">帮助及反馈</a></div>
		                            <div class="seli"><a class="nx-8" href="/dw/login!logout.action">退出</a></div>
		                        </div>
		                    </div>
		                </div>
		            </div>
				</div>
			
		</div>
		<div style="clear: both;"></div>
	</div>
	