<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/reserve/list.jsp</title>
<style>
	.page-ui a{
		text-decoration: none;
		color: #000;
	}
	
	.page-ui a:hover{
		text-decoration: underline;
	}
	
	.page-ui a.active{
		color: black;
		font-weight: bold;
		text-decoration: underline;
	}
	.page-ui ul{
		list-style-type: none;
		padding: 0;
	}
	
	.page-ui ul > li{
		float: left;
		padding: 5px;
	}
</style>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-gH2yIJqKdNHPEq0n4Mqa/HGKIhSkIHeL5AyhkYV8i59U5AR6csBvApHHNl/vI1Bx" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-A3rJD856KowSb7dwlZdYEkO39Gagi7vIsF0jrRAoQmDKKtQBHUuLZ9AsSv4jD4Xa" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
	<h1>예약내역</h1>
		<ul>
			<li><a href="${pageContext.request.contextPath }/reserve/leave_insertform.do">출국서비스 예약하기</a></li>
			<li><a href="${pageContext.request.contextPath }/reserve/ent_insertform.do">입국서비스 예약하기</a></li>
		</ul>
	</div>
	
	<div class="container">
		<table class="table table-striped align-middle">
			<thead>
				<tr>
					<th>서비스</th>
					<th>예약자</th>
					<th>예약자 연락처</th>
					<th>수령자</th>
					<th>수령자 연락처</th>
					<th>수하물 보낼 주소</th>
					<th>수령일</th>
					<th>수령장소</th>
					<th>기본형</th>
					<th>대   형</th>
					<th>25kg초과</th>
					<th></th>
					<th></th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="tmp" items="${list }">
				<tr>
					<c:choose>
						<c:when test="${tmp.reservetype eq 'leave_insertform'}">
							<td>출국</td>
						</c:when>
						<c:otherwise>
							<td>입국</td>
						</c:otherwise>
					</c:choose>
					<td>${tmp.name }</td>
					<td>${tmp.phone }</td>
					<td>${tmp.rname }</td>
					<td>${tmp.rphone }</td>
					<td>${tmp.addr }</td>
					<td>${tmp.rsdate }</td>
					<c:choose>
						<c:when test="${tmp.place eq 'first'}">
							<td>제 1 터미널</td>
						</c:when>
						<c:otherwise>
							<td>제 2 터미널</td>
						</c:otherwise>
					</c:choose>
					<td>${tmp.basic }개</td>
					<td>${tmp.big }개</td>
					<td>${tmp.over }개</td>
					<td><a href="${pageContext.request.contextPath }/reserve/updateform.do?num=${ tmp.num}">일정 수정</a></td>
					<td><a href="${pageContext.request.contextPath }/reserve/delete.do?num=${ tmp.num}" onclick="return confirm('예약을 취소하시겠습니까?')">삭제</a></td>
				</tr>
				</c:forEach>
			</tbody>
		</table>
		<a href="${pageContext.request.contextPath }">홈으로</a>
	</div>
	
	<div class="container page-ui">
		<ul>
			<c:if test="${startPageNum ne 1 }">
				<li>
					<a href="list.do?pageNum=${startPageNum-1 }">Prev</a>
				</li>
			</c:if>
			<c:forEach var="i" begin="${startPageNum }" end="${endPageNum }">
				<li>
					<c:choose>
						<c:when test="${pageNum eq i }">
							<a  class="active" href="list.do?pageNum=${i }">${i }</a>
						</c:when>
						<c:otherwise>
							<a href="list.do?pageNum=${i }">${i }</a>
						</c:otherwise>
					</c:choose>
				</li>
			</c:forEach>
			<c:if test="${endPageNum lt totalPageCount }">
				<li>
					<a href="list.do?pageNum=${endPageNum+1 }">Next</a>
				</li>
			</c:if>
		</ul>
	</div>
</body>
</html>