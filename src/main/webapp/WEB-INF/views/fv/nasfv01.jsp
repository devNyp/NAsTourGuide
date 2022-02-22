<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="/resources/css/fv.css">

</head>
<body>
<div class="div-nasfv01-01 main_header" id="div-nasfv01-01">
	<h3>지역 별 행사</h3>
</div>
<div class="div-nasfv01-02" id="div-nasfv01-02">
<select name="location" id="select-nasfv01-01" onchange="setNasfvLocation();">
<c:choose>
<c:when test="${location == '0' }">
		<option value="0" selected="selected">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '1' }">
		<option value="0">전국</option>	<option value="1" selected="selected">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '2' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2" selected="selected">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '3' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3" selected="selected">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '4' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4" selected="selected">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '5' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5" selected="selected">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '6' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6" selected="selected">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '7' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7" selected="selected">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '8' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8" selected="selected">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '31' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31" selected="selected">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '32' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32" selected="selected">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '33' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33" selected="selected">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '34' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34" selected="selected">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '35' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35" selected="selected">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '36' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36" selected="selected">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '37' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37" selected="selected">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '38' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38" selected="selected">전라남도</option>	<option value="39">제주도</option>
	</c:when>
	<c:when test="${location == '39' }">
		<option value="0">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39" selected="selected">제주도</option>
	</c:when>
	<c:otherwise>
		<option value="0" selected="selected">전국</option>	<option value="1">서울</option>	<option value="2">인천</option>	
		<option value="3">대전</option>	<option value="4">대구</option>	<option value="5">광주</option>	
		<option value="6">부산</option>	<option value="7">울산</option>	<option value="8">세종특별자치시</option>	
		<option value="31">경기도</option>	<option value="32">강원도</option>	<option value="33">충청북도</option>	
		<option value="34">충청남도</option>	<option value="35">경상북도</option>	<option value="36">경상남도</option>	
		<option value="37">전라북도</option>	<option value="38">전라남도</option>	<option value="39">제주도</option>
	</c:otherwise>
	</c:choose>
</select>
</div>

<div class="div-nasfv01-03" id="div-nasfv01-03">
<c:forEach items="${list }" var="list">
<div class="div-nasfv01-04" style="border:1px solid" id="div-nasfv01-${list.contentid }" onclick="location.href='/fv/nasfv02?contentid=${list.contentid }&contentTypeId=${list.contenttypeid }'">
	<!--  img 있나 없나 -->
	<c:choose>	
		<c:when test="${list.firstimage2 != null}" >
			<img alt="" src="${list.firstimage2}" class="fvThumNail">
		</c:when>
		<c:otherwise>
			<img alt="${list.title }" src="/resources/image/noImages.jpg" class="fvThumNail">
		</c:otherwise>
	</c:choose>
	<p>	${list.title }	</p>
	<p>축제 기간 : ${list.eventenddate } ~ ${list.eventstartdate }</p>

</div>
</c:forEach>
</div>
<form action="/fv/nasfv01" id=div-nasfv01-form method="get">
<input type="hidden" name="location"  id="div-nasfv01-location">
<input type="hidden" name="numOfRows" id="div-nasfv01-numOfRows">

</form>

<button id="btn-nasfv01">더 보기</button>
</body>
<script type="text/javascript">
/* Javascript Sample*/


document.getElementById("btn-nasfv01").addEventListener("click",function(){diplayFvLstNasfv01_2(); scrollDown();});	

function diplayFvLstNasfv01_2(){
	// 이거 쓰고싶다....
	let location = document.getElementById("div-nasfv01-location");
	let numOfRows = document.getElementById("div-nasfv01-numOfRows");
	
	let form = document.getElementById("div-nasfv01-form");	
	let cnt = document.getElementsByClassName("div-nasfv01-04");
	
	let order_selector= document.getElementById("select-nasfv01-01");
    if(order_selector!==undefined && order_selector!==null){
	    let val1 = order_selector.options[order_selector.selectedIndex].value;
        if(val1 != undefined && val1 != null && val1 !='' ){
        	location.value = val1;
	    }
    }else 	location.value = '0'; 	
	
	let data = {"location":location.value,"numOfRows":''+(cnt.length+4)};
	
	let request = new XMLHttpRequest();
	request.open('POST', '/fv/nasfv01_2', true);	
	request.setRequestHeader("Content-Type", "application/json");
	request.send(JSON.stringify(data));
	request.onreadystatechange = function(event) {
		if (request.readyState == 4) {
			if (request.status == 200) {
				let lst = request.responseText;
				
				let parseData = JSON.parse(lst);
				let here = document.getElementById("div-nasfv01-03");
				
				let str = "";
				for(let i =0; i<parseData.length; i++){
					str+= '<div class=\"div-nasfv01-04\" style=\"border:1px solid\" id=\"div-nasfv01'+parseData[i].contentid;
					str+='\" onclick=\"location.href=\'/fv/nasfv02?contentid='+parseData[i].contentid+'&contentTypeId='+parseData[i].contenttypeid+'\'\">';
					if(parseData[i].firstimage2!==null && parseData[i].firstimage2!==undefined){
						str+='<img alt=\"'+parseData[i].title+'\" src=\"'+parseData[i].firstimage2+'\" class=\"fvThumNail\">';
					}else{
						str+='<img alt=\"parseData[i].title\" src=\"/resources/image/noImages.jpg\" class=\"fvThumNail\">';
					}
					str+= "<p>"+parseData[i].title+"</p>	<p>축제 기간 : "+ parseData[i].eventenddate +" ~ "+ parseData[i].eventstartdate+"</p>";					
					str+= "</div>"
				}
				here.innerHTML = str;
				// 혹시나 해서 달아둔 css 적용되라 소스
				here.style.display='grid';
				let fvThumNail = document.getElementsByClassName("fvThumNail");
				for(let i =0; i<div04.length;i++){
					fvThumNail[i].style.width='260px';
					fvThumNail[i].style.height='270px';
				}
				set_order(location.value,"select-nasfv01-01");
			}
		}
	}
}

function diplayFvLstNasfv01(index) {

	let location = document.getElementById("div-nasfv01-location");
	let numOfRows = document.getElementById("div-nasfv01-numOfRows");
	
	let form = document.getElementById("div-nasfv01-form");	
	let cnt = document.getElementsByClassName("div-nasfv01-03");
	

	let order_selector= document.getElementById("select-nasfv01-01");
    if(order_selector!==undefined && order_selector!==null){
	    let val1 = order_selector.options[order_selector.selectedIndex].value;
        if(val1 != undefined && val1 != null && val1 !='' ){
        	location.value = val1;
	    }
    }else 	location.value = '0'; 	
	
	 
	numOfRows.value = 8;

	form.submit();
		
}

function scrollDown(){
	document.body.scrollTop = document.body.scrollHeight;
}

function setNasfvLocation() {
	let location_selector= document.getElementById("select-nasfv01-01");
	
    if(location_selector!==undefined && location_selector!==null){
	    let val1 = location_selector.options[location_selector.selectedIndex].value;
	    
        if(val1 != undefined && val1 != null && val1 !='' ){
        	let location = document.getElementById("div-nasfv01-location");
        	location.value = val1;
	    }
        
        diplayFvLstNasfv01(0);
    }	
}

function set_order(order, divId){
	let selection = document.getElementById(divId);
	for(let i = 0; i <selection.children.length ; i++){
		if(selection.options[i].value == order || selection.options[i].value === order){
			selection.options[i].selected = true;
		}			
	}	
}

</script>
</html>