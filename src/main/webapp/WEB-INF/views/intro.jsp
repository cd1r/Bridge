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
<script src="/resources/js/intro.js"></script>
<title>BRIDGE Art Hall</title>
</head>
<body>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Bridge Art Hall</title>
<link href="/resources/css/intro.css" rel="stylesheet" type="text/css" />
</head>

<body>
	<div id="topParent">
        <div id="topBack">
            <div id="imgDiv">
                <img id="logo" src="/resources/img/bridgew.png">
            </div>
            <div id="menuDiv">
            	<ul id="menuUl">
                	<li><a href="/performanceList">공연</a></li>
                    <li>공연장</li>
                    <li>예매조회/취소</li>
                    <li>로그인</li>
                </ul>
            </div>
        </div>
        <div id="sliderDiv">
            	<img id="slider" src="/resources/img/main_pic.jpg">
        </div>
        <div id="centerLabelDiv">
        	<span>상영중인 공연</span>
        </div>
        <div id="mainPerfsDiv">
        	<c:forEach items="${perfList}" var="performanceVO">
        		<div class="mainPerfs">
        			<img id="${performanceVO.id}" class="mainPerfsImg"
        				src="/resources/img/${performanceVO.main_img_dir}">
        		</div>
        	</c:forEach>
        </div>
    </div>
</body>
</html>

</body>
</html>