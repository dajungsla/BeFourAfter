<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<c:choose>
	<c:when test="${dto.reservetype eq 'leave_insertform'}">
		<h1>출국서비스</h1>
		
		<h2>예약 수정</h2>
		<div class="container">
			<form action="update.do" method="post" id="leave_insertform">
				<input type="hidden" name="leave_insertform" id="leave_insertform" value="leave_insertform"/>
				<input type="hidden" name="num" id="num" value="${dto.num }"/>
				<input type="hidden" name="name" id="name" value="${dto.name }"/>
				<input type="hidden" name="phone" id="phone" value="${dto.phone }"/>
				<p>
				<label for="name">예약자이름</label>
				<input type="text" name="name" id="name" value="${dto.name }"disabled/>
				<br />
				<label for="phone">핸드폰번호</label>
				<input type="text" name="phone" id="phone" value="${dto.phone }"disabled/>
				</p>
				<p>
				<label for="rname">수령인</label>
				<input type="text" name="rname" id="rname" value="${dto.rname }"/>
				<br />
				<label for="rphone">핸드폰번호</label>
				<input type="text" name="rphone" id="rphone" value="${dto.rphone }"/>
				<br />
				<label for="same"> <small> 예약자와 동일 </small>
				<input type="checkbox" name="same" value="same"/>
				</label>
				</p>
				<p>
				<label for="rsdate">수령 날짜 및 시간</label><br />
				<input type="datetime-local" name="rsdate" id="rsdate" value="${dto.rsdate }"/>
				</p>
				<fieldset>
					<legend>수령장소</legend>
					<c:choose>
						<c:when test="${dto.place eq 'first'}">
							<label for="place">
								<input type="radio" name="place" value="first" checked="checked"/>제 1 터미널
							</label>
							<label for="place">
								<input type="radio" name="place" value="second"/>제 2 터미널
							</label>
						</c:when>
						<c:otherwise>
							<label for="place">
								<input type="radio" name="place" value="first" />제 1 터미널
							</label>
							<label for="place">
								<input type="radio" name="place" value="second" checked="checked"/>제 2 터미널
							</label>
						</c:otherwise>
					</c:choose>
				</fieldset>
				<p>
				<label for="basic">기본 수하물</label>
				<input type="number" name="basic" id="basic" value="${dto.basic }" placeholder="수량입력"/>
				<br />
				<small>(캐리어28인치 이하, 백팩, 가방, 20kg 이하)</small>
				</p>
				<p>
				<label for="big">대형 수하물</label>
				<input type="number" name="big" id="big" value="${dto.big }" placeholder="수량입력"/>
				<br />
				<small>(캐리어28인치 초과, 박스, 골프백, 20kg 초과)</small>
				</p>
				<p>
				<label for="over">25kg 초과</label>
				<input type="number" name="over" id="over" value="${dto.over }" placeholder="수량입력"/>
				<br />
				<small>(개당 5,000원 추가)</small>
				</p>
				<p>
				<button type="submit">수정</button>
				</p>
				<a href="${pageContext.request.contextPath }/reserve/list.do">목록으로</a>
			</form>
		</div>
	</c:when>
	<c:otherwise>
		<h1>입국서비스</h1>
		
		<h2>예약 수정</h2>
		<div class="container">
			<form action="update2.do" method="post" id="ent_insertform">
				<input type="hidden" name="ent_insertform" id="ent_insertform" value="ent_insertform"/>
				<input type="hidden" name="num" id="num" value="${dto.num }"/>
				<input type="hidden" name="name" id="name" value="최현호"/>
				<input type="hidden" name="phone" id="phone" value="01048462650"/>
				<p>
				<label for="name">예약자이름</label>
				<input type="text" name="name" id="name" value="최현호"disabled/>
				<br />
				<label for="phone">핸드폰번호</label>
				<input type="text" name="phone" id="phone" value="01048462650"disabled/>
				</p>
				<p>
				<label for="rsdate">맡기는 날짜 및 시간</label><br />
				<input type="datetime-local" name="rsdate" id="rsdate" value="${dto.rsdate }"/>
				</p>
				<fieldset>
					<legend>맡길장소</legend>
					<c:choose>
						<c:when test="${dto.place eq 'first'}">
							<label for="place">
								<input type="radio" name="place" value="first" checked="checked"/>제 1 터미널
							</label>
							<label for="place">
								<input type="radio" name="place" value="second"/>제 2 터미널
							</label>
						</c:when>
						<c:otherwise>
							<label for="place">
								<input type="radio" name="place" value="first" />제 1 터미널
							</label>
							<label for="place">
								<input type="radio" name="place" value="second" checked="checked"/>제 2 터미널
							</label>
						</c:otherwise>
					</c:choose>
				</fieldset>
				<p>
				<label for="addr">수하물 보낼 주소</label>
				<input type="text" name="addr" id="addr" value="${dto.addr}" placeholder="주소를 정확히 입력해주세요 (시/군/구 + 상세주소)"/>
				</p>
				<p>
				<label for="basic">기본 수하물</label>
				<input type="number" name="basic" id="basic" value="${dto.basic}" plceholder=""/>
				<br />
				<small>(캐리어28인치 이하, 백팩, 가방, 20kg 이하)</small>
				</p>
				<p>
				<label for="big">대형 수하물</label>
				<input type="number" name="big" id="big" value="${dto.big}" plceholder=""/>
				<br />
				<small>(캐리어28인치 초과, 박스, 골프백, 20kg 초과)</small>
				</p>
				<p>
				<label for="over">25kg 초과</label>
				<input type="number" name="over" id="over" value="${dto.over}" plceholder=""/>
				<br />
				<small>(개당 5,000원 추가)</small>
				</p>
				<p>
				<button type="submit">예약</button>
				</p>
				<a href="${pageContext.request.contextPath }/reserve/list.do">목록으로</a>
			</form>
		</div>
	</c:otherwise>
</c:choose>
</body>
<script>

	//1. 회원정보 넘기기 수령인 정보에 예약자 정보 
	var checkbox = document.querySelector("input[name=same]");
	
	checkbox.addEventListener('change', function() {
	   if(checkbox.checked==true){
		   let name= document.getElementById('name').value;
		   let phone=document.getElementById('phone').value;
		   
		   document.getElementById('rname').value = name;
		   document.getElementById('rphone').value = phone;
	   } else {
		   document.getElementById('rname').value = "";
		   document.getElementById('rphone').value = "";
	   }
	   
	   });
	
	// 개인정보제공동의
	var checkbox2 = document.querySelector("input[name=agree]");
		
	// (출국)입력 되지않은 정보가 있으면 제출 x
	document.querySelector("#leave_insertform").addEventListener("submit", function(e){
		let basic=document.querySelector("#basic").value;
		let big=document.querySelector("#big").value;
		let over=document.querySelector("#over").value;
		
		let rname=document.querySelector("#rname").value;
		let rphone=document.querySelector("#rphone").value;
		let rsdate=document.querySelector("#rsdate").value;
		
		if(basic+big+over<=0 || rname=="" || rphone=="" || rsdate==""){
			alert("정보를 모두 입력해주세요.");
			e.preventDefault();
		}
		
		if(checkbox2.checked!=true){
			alert("개인정보 제공에 동의를 해주세요.");
			e.preventDefault();
		}
		
	});
	
	// (입국)입력 되지않은 정보가 있으면 제출 x
	document.querySelector("#ent_insertform").addEventListener("submit", function(e){
		let basic=document.querySelector("#basic").value;
		let big=document.querySelector("#big").value;
		let over=document.querySelector("#over").value;
		
		let addr=document.querySelector("#addr").value;
		let rsdate=document.querySelector("#rsdate").value;
		
		if(basic+big+over<=0 || addr=="" || rsdate==""){
			alert("정보를 모두 입력해주세요.");
			e.preventDefault();
		}
		
		if(checkbox2.checked!=true){
			alert("개인정보 제공에 동의를 해주세요.");
			e.preventDefault();
		}
	});
</script>
</html>