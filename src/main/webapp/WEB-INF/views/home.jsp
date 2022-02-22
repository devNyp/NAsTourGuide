<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="div-home-01" id="div-home-01">
<button onclick="diplayFvLstHome(0,8)">전국</button>
<button onclick="diplayFvLstHome(1,8)">서울</button>
<button onclick="diplayFvLstHome(2,8)">인천</button>
<button onclick="diplayFvLstHome(3,8)">대전</button>
<button onclick="diplayFvLstHome(4,8)">대구</button>
<button onclick="diplayFvLstHome(5,8)">광주</button>
<button onclick="diplayFvLstHome(6,8)">부산</button>
<button onclick="diplayFvLstHome(7,8)">울산</button>

<form action="/fv/nasfv01" id=div-home-form>
<input type="hidden" name="location" id="div-home-location">
<input type="hidden" name="numOfRows" id="div-home-numOfRows">
</form>
</div>
</body>
<script type="text/javascript">
function diplayFvLstHome(loca, num) {
	let location = document.getElementById("div-home-location");
	let numOfRows = document.getElementById("div-home-numOfRows");
	let form = document.getElementById("div-home-form");
	
	location.value = loca;
	numOfRows.value = num;
	form.submit();	
}
</script>
</html>
