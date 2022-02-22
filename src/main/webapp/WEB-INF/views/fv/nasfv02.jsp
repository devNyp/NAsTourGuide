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

<div class="div-nasfv02-01 main_header" id="div-nasfv02-01">
	<h3>행사 내용</h3>
</div>

<div class="div-nasfv02-01" id="div-nasfv02-01">
	<table class="tb-nasfv02">
		<tr>
		<c:choose>
		<c:when test="${list1.firstimage != null}">
			<td colspan="2" rowspan="5" style="width:40%"><img src="${list1.firstimage}" alt="" class="fvThumNail2"/></td>
			</c:when>
		<c:otherwise>
			<td colspan="2" rowspan="5" style="width:40%"><img src="/resources/image/noImages.jpg" alt="" class="fvThumNail2"/></td>
			</c:otherwise>
		</c:choose>
			<td colspan="2">${list1.title }
			<c:if test="${list1.booktour == 1}"><span> 교과서 여행지! </span></c:if>
			</td>
		</tr>
		<tr>
			<td>행사 기간</td><td>${list2.eventstartdate } ~ ${list2.eventenddate }</td>
		</tr>
		<tr>
			<td>행사 장소</td><td>${list2.eventplace}</td>
		</tr>
		<tr>
			<td>전화번호</td><td>${list1.telname} ${list1.tel}</td>
		</tr>
		<tr>
			<td>상세 주소</td><td>${list1.addr1} ${list1.addr2}</td>
		</tr>
		<tr>
			<td colspan="4">행사 개요</td>
		</tr>
		<tr>
			<td colspan="4">${list1.overview }</td>
		</tr>
		
		<tr>
			<td></td><td></td><td></td><td></td>
		</tr>
		<tr>
			<td></td><td></td><td></td><td></td>
		</tr>
<tr>
			<td colspan="2">홈페이지</td><td colspan="2">그 외</td>
		</tr>
		<tr>
			<td colspan="2"><input type="text" value="${list1.homepage }"/><br/>
			<textarea rows="" cols=""><c:out value="${list1.homepage }"/></textarea><br/>
			<div>
		<c:out value="${list1.homepage }"/>
		${list1.homepage }
			</div>
			 <br/>
			</td>
			<td colspan="2">
			<c:if test="${list2.usefee != null}">
			이용 요금 : 
			${list2.usefee}<br/></c:if>
			<c:if test="${list2.usetimeculture != null}">
			이용 시간 : 
			${list2.usetimeculture}<br/></c:if>
			<c:if test="${list2.parking != null}">
			주차시설
			${list2.parking}<br/></c:if>
		</tr>
	</table>

</div>

<form action="/rv/nasrv01" id="form-nasfv02-rv">
<input type="hidden" value="${list1.contentid }"/>
<button type="submit">리뷰 달기</button>
</form>

<form action="/rv/naslk01" id="form-nasfv02-lk">
<input type="hidden" value="${list1.contentid }"/>
<button type="submit">좋아요</button>
</form>

<form action="/fv/nasfv01" id="form-nasfv02-fv01" method="get">
<input type="hidden" name ="location" value="${list1.areacode }"/>
<input type="hidden" name ="numOfRows" value="8"/>
<button type="submit">목록으로</button>
</form>
</body>
</html>