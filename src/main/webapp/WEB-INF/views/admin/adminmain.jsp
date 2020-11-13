<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>On:Soo - Admin Main</title>
<link href="${pageContext.request.contextPath}/resources/css/admin.css?after" rel="stylesheet">
</head>
<body>
	<!-- header -->
	<header id="header" class="area">
		<%@ include file="/WEB-INF/views/header.jsp"%>
	</header>
	
	<section>
		<div class="admin_title">
			<p>ADMIN MAIN</p>
		</div>
		
		<div id="first_area">
			<div class="first_table_all" onclick="location.href='<c:url value="/admin/memberlist.do"/>'">
				<p class="first_table_name">전체 회원 조회</p>
				<table class="admin_first_table">
					<col width="25%"/>
					<col width="20%"/>
					<col width="55%"/>
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>EMAIL</th>
					</tr>
					
				<c:forEach items="${list }" var="dto">
					<tr>
						<td style="overflow:auto;">${dto.member_id }</td>
						<td>${dto.member_name }</td>
						<td style="overflow:auto;">${dto.member_email }</td>
					</tr>
				</c:forEach>
				
				</table>
			</div>
			<div class="second_table_all"  onclick="location.href='<c:url value="/admin/reviewlist.do"/>'">
				<p class="second_table_name">강사 인증 신청</p>
				<table class="admin_second_table">
					<col width="25%"/>
					<col width="20%"/>
					<col width="55%"/>
					<tr>
						<th>ID</th>
						<th>NAME</th>
						<th>EMAIL</th>
					</tr>
					
				<c:forEach items="${teacherlist }" var="dto">
					<tr>
						<td style="overflow:auto;">${dto.member_id }</td>
						<td>${dto.member_name }</td>
						<td style="overflow:auto;">${dto.member_email }</td>
					</tr>
				</c:forEach>
				
				</table>
			</div>
		</div>	
		
		<div id="second_area">
			<div class="third_table_all" onclick="location.href='<c:url value="/admin/reportlist.do"/>'">
				<p class="third_table_name">신고 회원 조회</p>
				<table class="admin_third_table">
					<col width="50%"/>
					<col width="20%"/>
					<col width="30%"/>
					<tr>
						<th>TITLE</th>
						<th>ID</th>
						<th>DATE</th>
					</tr>
					
				<c:forEach items="${reportlist }" var="rdto">
					<tr>
						<td style="overflow:auto;">${rdto.report_title }</td>
						<td style="overflow:auto;">${rdto.report_ided }</td>
						<td>${rdto.report_date }</td>
					</tr>
				</c:forEach>
				
				</table>
			</div>
			
			<div class="forth_table_all" onclick="location.href='videoreviewlist.do'">
				<p class="forth_table_name">동영상 심의 신청</p>
				<table class="admin_forth_table">
					<col width="35%"/>
					<col width="40%"/>
					<col width="20%"/>
					<tr>
						<th>ID</th>
						<th>REGDATE</th>
						<th>ROLE</th>
					</tr>
					 
				<c:forEach items="${list }" var="dto">
					<tr>
						<td style="overflow:auto;">${dto.member_id }</td>
						<td>${dto.member_regdate }</td>
						<td style="overflow:auto;">${dto.member_role }</td>
					</tr>
				</c:forEach>
					 
				</table>
			</div>
		</div>
	</section>
	 
	<footer id="footerarea" class="area">
		<%@ include file="/WEB-INF/views/footer.jsp"%>
	</footer>
	
</body>
</html>