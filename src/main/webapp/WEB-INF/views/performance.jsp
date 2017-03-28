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
<script src="/resources/js/performance.js"></script>
<title>BRIDGE Art Hall</title>
</head>
<body>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Bridge Art Hall</title>
<link href="/resources/css/perfdesc.css" rel="stylesheet" type="text/css" />
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
        
        <table id="descTable" align="center">
            <tr>
                <td rowspan="7"><img id="poster" src="/resources/img/${performanceVO.main_img_dir}"></td>
            </tr>
            <tr class="descTr">
                <td id="titleTd">${performanceVO.name}</td>
            </tr>
            <tr class="descTr">
                <td id="rateTd"><span id="rateLabel">평점</span><span id="rateStar">★★★★</span></td>
            </tr>
            <tr class="descTr">
                <td id="directorTd">감독 : ${performanceVO.director}</td>
            </tr>
            <tr class="descTr">
                <td id="characterTd">출연진 : ${performanceVO.characters}</td>
            </tr>
            <tr class="descTr">
                <td id="termTd">기간 : ${performanceVO.term_from} ~ ${performanceVO.term_to}</td>
            </tr>
            <tr class="descTr">
                <td id="resBtnTd"><input id="resBtn" type="button" value="예매하기"></td>
            </tr>
        </table>

		<div id="videoDiv" class="backDiv">
	  		<iframe id="videoFrame" width="854" height="480" 
	  				src="https://www.youtube.com/embed/${performanceVO.video_url}" 
	  				frameborder="0" allowfullscreen>
	  		</iframe>
	  	</div>


        <div id="descPosterDiv" class="backDiv">
        	<img id="descPoster" src="/resources/img/${performanceVO.desc_img_dir}">
        </div>
    </div>

    <div id="rateBackDiv" class="backDiv" align="center">
    	<div id="writeDiv">
			<span>평점</span>
            <div id="starsDiv">
	            <span>★</span><span>★</span><span>★</span><span>★</span><span>☆</span>
            </div>
            <input id="writeContent" type="text">
			<input id="registBtn" type="button" value="등록하기">
        </div>
    </div>
</body>
</html>