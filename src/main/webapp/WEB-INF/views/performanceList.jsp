<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="/resources/js/performanceList.js"></script>
<title>BRIDGE Art Hall</title>
</head>
<body>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Bridge Art Hall</title>
<link href="/resources/css/performanceList.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="topParent">
        <div id="topBack">
            <div id="imgDiv">
                <img id="logo" src="/resources/img/bridgew.png">
            </div>
            <div id="menuDiv">
            	<ul id="menuUl">
                	<li>공연</li>
                    <li>공연장</li>
                    <li>예매조회/취소</li>
                    <li>로그인</li>
                </ul>
            </div>
        </div>
     </div>
     
     <table align="center" class="perfList">
     	<c:forEach items="${perfList}" var="performanceVO">
        	<tr>
            	<td class="leftTd">
                	 <img id="poster_${performanceVO.id}" class="mainPoster" src="resources/img/${performanceVO.main_img_dir}">
                </td>
                <td class="midTd">
                	<div id="perfNameDiv">${performanceVO.name}</div>
                    <div id="ratingDiv"><span id="ratingLabel">평점</span><span id="rating">★★★★</span></div>
                    <div id="directorDiv">감독: ${performanceVO.director}</div>
                    <div id="characterDiv">출연자 : ${performanceVO.characters}</div>
                    <div id="termDiv">공연기간 : ${performanceVO.term_from} ~ ${performanceVO.term_to}</div>
                </td>
                <td class="rightTd">
                	<div><input id="descBtn_${performanceVO.id}" class="descBtn" type="button" value="상세보기"></div>
                    <div><input id="reserveBtn_${performanceVO.id}" class="reserveBtn" type="button" value="바로예매"></div>
                </td>
            </tr>
    	</c:forEach>
	</table>
</body>
</html>