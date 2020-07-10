<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link rel="shortcut icon" href="/images/favicon1.ico" type="image/x-icon">
    <link rel="icon" href="/images/favicon1.ico" type="image/x-icon">
    <title>어울림</title>
    <style type="text/css">
    	
    </style>
    <meta charset="UTF-8">
    <!-- 참조 : http://getbootstrap.com/css/   참조 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <script src="https://code.jquery.com/jquery-3.2.1.js"></script>
    <!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css" />
    <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.3/js/bootstrap.min.js"></script> -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/css/bootstrap-datepicker3.min.css">
    <script type='text/javascript' src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.5.0/js/bootstrap-datepicker.min.js"></script>
        <script src="https://kit.fontawesome.com/6ffe1f5c93.js" crossorigin="anonymous"></script>
        <script src="/javascript/iscroll.js"></script>
        
        <script>
        var myScroll = null;

        $(function() {

            myScroll = new IScroll('#wrapper', {
                mouseWheel: true,
                scrollbars: true
            });

            setTimeout(function() {
                myScroll.refresh();
            }, 0);
            
            
        });
        </script>
     
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        li {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: inherit;
        }

        body {
            font-size: 16px;
            color: #333;
            font-family: 'Roboto', sans-serif;
            font-family: 'Nanum Gothic', sans-serif;
        }



        div.navigation {

            margin-bottom: 5px;
            text-align: right;
            margin-right: 30px;
        }

        div.navigation span:nth-child(2) {

            font-weight: bold;
        }

        div.noticeTop {

            margin-bottom: 50px;
        }

        div.noticeTop span:nth-child(1) {

            font-size: 23px;
            font-weight: bold;
            margin-right: 10px;
        }


        div.notice table {

            border-top: 2px solid #EBAD7A;
            border-bottom: 2px solid #EBAD7A;
            width: 100%;
            border-collapse: collapse;
        }

        div.notice table tr {

            line-height: 45px;
            border-bottom: 1px solid #eee;
        }

        div.notice table tr:nth-child(1) td:nth-child(1),
        div.notice table tr:nth-child(2) td:nth-child(1),
        div.notice table tr:nth-child(3) td:nth-child(1),
        div.notice table tr:nth-child(3) td:nth-child(3) {
            background-color: #fdfdfd;

            font-weight: bold;
        }

        div.notice table tr td {

            padding-left: 15px;
        }

        div.notice table tr:nth-child(4) td {
            padding: 0;
            padding: 10px;
        }

        div.notice table tr td img {
            vertical-align: middle;

        }

        div.notice div.list {
            text-align: right;
        }

        div.notice div.list a {
            background-color: #EBAD7A;
            display: inline-block;
            line-height: 25px;
            padding: 0 40px;
            color: #fff;
            font-weight: bold;
            margin: 20px 0;

        }

        div.notice div.list button {
            background-color: #EBAD7A;
            display: inline-block;
            line-height: 25px;
            padding: 0 40px;
            color: #fff;
            font-weight: bold;
            margin: 20px 0;

        }

        div.wrap>div:nth-child(4) table {

            border-top: 2px solid #EBAD7A;
            border-bottom: 2px solid #EBAD7A;
            width: 100%;
            border-collapse: collapse;
        }

        div.wrap>div:nth-child(4) table tr {

            line-height: 35px;
            border-bottom: 1px solid #eee;
        }


        div.wrap>div:nth-child(4) table tr td:nth-child(1) {
            width: 70px;
            text-align: center;
            border-right: 1px solid #eee;
            background-color: #fdfdfd;
        }

        div.wrap>div:nth-child(4) table tr td:nth-child(2) {
            padding-left: 30px;
        }
    </style>




    <title>Insert title here</title>

    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>

    <script type="text/javascript">
        // 	$(function() {
        // 		//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
        // 		$("button").on("click", function() {
        // 			self.location = "/user/updateUser?userId=${user.userId}";
        // 		});
        // 	});
        
        $(function() {
        	$('#more').find('i:nth-child(3)').removeClass('fa-caret-down').addClass('fa-caret-up');
        });
    </script>

    <style>
        div.layoutWrap {

            width: 100%;
            min-height: 200vh;
            padding: 0 20%;
            position: relative;
        }

        div.leftToolbar {
            width: 20%;
            height: 100vh;

            position: fixed;
            top: 0;
            left: 0;
            bottom: 0;
            background: #fff;
            border-right: 1px solid #eee;
        }

        div.rightToolbar {
            width: 20%;
            height: 100vh;

            position: fixed;
            top: 0;
            right: 0;
            bottom: 0;
            background: #fff;
            border-left: 1px solid #eee;
        }
        
        #goMore {
            transition: max-height 1s;
            max-height: 500px;
            padding-top: 10px;
        }
        #goMore ul li:nth-child(2) {
        	color: #EBAD7A;
        }
    </style>
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Roboto&display=swap" rel="stylesheet">
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        li {
            list-style: none;
        }

        a {
            text-decoration: none;
            color: inherit;

        }

        a:hover,
        a:focus {
            text-decoration: none;
            color: inherit;
        }

        body {
            color: #333;
            font-size: 16px;
            font-family: 'Roboto', sans-serif;
            font-family: 'Nanum Gothic', sans-serif;

        }

        div.layoutWrap2 {
            width: 1280px;
            height: 100vh;

            margin: 0 auto;
            overflow: hidden;
        }

        div.leftToolbar2 {

            width: 240px;
            height: 100vh;
            float: left;
            background-color: #fff;
            border-right: 1px solid #eee;
            padding: 15px 0 0 15px;d
            position: relative;
        }

        div.work2 {

            width: 770px;
            height: 100vh;
            float: left;

            position: relative;
			
        }

		

        div.rightToolbar2 {

            width: 270px;
            height: 100vh;
            float: left;
            background-color: #fff;
            border-left: 1px solid #eee;
            padding: 15px 15px 0 15px;
        }
        
        div.mainHeader2 {

            line-height: 55px;
            font-weight: bold;
            padding-left: 15px;
            padding-right: 15px;
            font-size: 20px;
            width: 100%;
            overflow: hidden;
            border-bottom: 1px solid #ebebeb;
            background-color: #fff;
        }
        div.mainHeader2 div.left2 {
            width: 90%;
            float: left;
        }
		div.mainHeader2 div.left2 span {
			font-weight: normal;
			font-size: 13px;
			margin-left: 10px;
		}
        div.mainHeader2 div.right2 {
            text-align: right;
            width: 10%;
            float: right;
        }

        div.mainHeader2 div.right2 i {
            vertical-align: baseline;
        }
    </style>
</head>

<body>
    <div class="layoutWrap2">
        <div class="leftToolbar2">
            <jsp:include page="/layout/left.jsp" />
        </div>
        <div class="work2" id="wrapper">
        <ul>
        <div class="mainHeader2">
                 <div class="left2">
                     내 문의사항 보기
                     
                 </div>
                 <div class="right2">
                     <a href="#"><i class="far fa-star"></i></a>
                 </div>
            </div>
            <div class="wrap">
            
                
                <div class="notice">
                    <table>
                        <colgroup>
                            <col width="15%">
                            <col width="35%">
                            <col width="15%">
                            <col width="35%">
                        </colgroup>
                        <tr>
                            <td>제목</td>
                            <td>${post.postTitle }</td>
                            <td>카테고리</td>
                            <!--  카테고리 번호에 따라서 나옴 -->
                            <c:if test="${post.gatherCategoryNo == '101'}">
                                <td>매칭</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '102'}">
                                <td>아이템</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '103'}">
                                <td>도전과제</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '104'}">
                                <td>결제</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '105'}">
                                <td>친구</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '106'}">
                                <td>타임라인</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '107'}">
                                <td>ASK</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '108'}">
                                <td>계정</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '109'}">
                                <td>알림</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '110'}">
                                <td>위치</td>
                            </c:if>
                            <c:if test="${post.gatherCategoryNo == '111'}">
                                <td>기타</td>
                            </c:if>
                        </tr>
                        <tr>
                            <td>작성자</td>
                            <td>${post.userId }</td>
                            <td>공개여부</td>
                            <td>
                                <c:if test="${post.viewStatus == '1' or post.viewStatus == null}">
                                    공개
                                </c:if>
                                <c:if test="${post.viewStatus == '2'}">
                                    비공개
                                </c:if>
                            </td>

                        </tr>
                        <tr>
                            <td>작성일</td>
                            <td>${post.postDate }</td>
                            <td>처리결과</td>
                            <td>
                                <c:if test="${post.questionStatus == '1' or post.questionStatus == null}">
                                    처리중
                                </c:if>
                                <c:if test="${post.questionStatus == '2'}">
                                    처리 완료
                                </c:if>
                            </td>
                        </tr>
                        <td colspan="4">
                            <br>
                            <!--  내용  -->
                            <div>${post.postContent }</div>
                            <br>
                        </td>
                        <tr>
                            <td colspan="4">
                                <img src="img/e7b99206a6a2d1e0.webp" alt="">
                            </td>
                        </tr>
                    </table>


                </div>
                <div class="notice">

                    <div class="list">
                        <a href="/user/getUserQuestions">목록</a>
                        <c:if test="${user.role eq '4' }">
                            <button onclick="location.href='/user/getUserQuestionsList'">전체목록 ( 관리자 전용 )</button><br>
                        </c:if>
                        <a href="/user/updateQuestions?postNo=${post.postNo }">수정</a>
                        <a href="javascript:history.go(-1)">뒤로</a>
                    </div>

                </div>

            </div>
            </ul>
        </div>
        <div class="rightToolbar2">
            <jsp:include page="/layout/right.jsp" />
        </div>
    </div>
</body></html>