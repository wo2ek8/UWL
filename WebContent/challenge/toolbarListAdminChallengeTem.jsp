<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>어울림</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="/javascript/iscroll.js"></script>
   
   	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://cdn.rawgit.com/mgalante/jquery.redirect/master/jquery.redirect.js"></script>
    <script src="/javascript/jquery.bootstrap-pureAlert.js"></script>
    <script src="https://kit.fontawesome.com/6ffe1f5c93.js" crossorigin="anonymous"></script>
    
    <!-- 개인적용 CSS -->
    <style>
        div.challDate {
            text-align: right;
        }

        body {
            font-family: 'Nanum Gothic', sans-serif;
            font-family: 'Noto Sans KR', sans-serif;
        }

        /* 아이콘 색 지정*/
        
        .fa-coins {
            color: #ffc811;
        }

        .fa-running {
            color: #28aa10;
        }

        .fa-credit-card {
            color: #1e291b;
        }

        .fa-calendar-check {
            color: #a72644;
        }

        .fa-map-marked-alt {
            color: #168641;
        }

        .fa-piggy-bank {
            color: #ffb8c6;
        }

        .fa-camera {
            color: rgb(12, 98, 183);
        }

        .fa-clipboard {
            color: rgb(4, 4, 5);
        }

        .fa-medal {
            color: #ffc811;
        }


        /* 등록 하기위해 내가 추가한 것 */
        div.addChallenge div.list {
            text-align: right;
            border-color: #c33214;
        }

        div.addChallenge div.list a {
            background-color: #EBAD7A;
            display: inline-block;
            line-height: 40px;
            padding: 0 65px;
            color: #fff;
            font-weight: bold;
            margin: 20px 0;
            border-color: #c33214;
            border: medium;
        }

        #challengeBox {
            border-color: #ebad7a;
        }

        div.alert {
            background-color: #f4cdad;
            border-color: #f4cdad;
        }

        img {
            display: none;
        }

        div.totalChallenge {
            font-size: 30px;
        }

    </style>
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
	        
        $(function() {

            //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
            $(".list-group-item").on("click", function() {
                var challNo = $(this).children('div').children("input[type='hidden']").val();
                console.log("challNo : " + challNo);
                self.location = "/challenge/getChallenge?challNo=" + challNo;
            });

            $(".list a:contains('등록')").on("click", function() {
                /* alert("등록되는거임 ㅋㅋ") */
                self.location = "/challenge/addChallenge"
            });


        });

        /* 페이지네비게이션 */
        function fncGetList(currentPage) {
            $("#currentPage").val(currentPage)
            /* alert("currPage"+currentPage); */
            $("form").attr("method", "POST").attr("action", "/challenge/listAdminChallenge").submit();
        }
	        
    </script>
    
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
            padding: 15px 0 0 15px;
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
        
    </style>
</head>

	<body>
	    <div class="layoutWrap2">
	        <div class="leftToolbar2">
	            <jsp:include page="/layout/left.jsp" />
	        </div>
	        <div class="work2" id="wrapper">
	       	 <ul>
	       	 	<form class="form-inline">
                <div class="container-md">
                    <br>
                    <h2>주간 도전과제 목록 (관리자용) </h2>
                    <br>
                    <div class="alert alert-secondary" role="alert">
                        <font style="font-size: 20px">관리자라면 등록자 상관없이 내용을 수정할 수 있습니다. </font>
                        <div class="addChallenge">
                            <div class="list">
                                <a href="#">등록</a>
                            </div>
                        </div>
                    </div>
                    <div class="totalChallenge" style="float:left;">
                        총 <i class="fas fa-medal"></i> ${resultPage.totalCount} 등록
                    </div>
                    <br>
                    <br>
                    <br>
                


                    <div class="list-group">
                        <c:forEach var="challenge" items="${list}">
                            <a href="#" class="list-group-item list-group-item-action" id="challengeBox">
                                <div class="d-flex w-100 justify-content-between">
                                    <input type="hidden" value="${challenge.challNo}">
                                    <h5 class="mb-1">${challenge.challTitle}</h5>
                                    <small class="text-muted">${challenge.challDate}</small>
                                </div>
                                ${challenge.challContent}
                                <p class="mb-1">
                                </p>
                                <small class="text-muted">
                                    <c:if test="${challenge.challCategory == '1'}">
                                        <i class="fas fa-map-marked-alt" style="font-size: 25px; "></i>&nbsp;&nbsp;Map&nbsp;&nbsp;

                                    </c:if>
                                    <c:if test="${challenge.challCategory == '2'}">
                                        <i class="fas fa-camera" style="font-size: 25px; "></i>&nbsp;&nbsp;Vision&nbsp;&nbsp;
                                        <i class="fas fa-coins" style="font-size: 25px; text-align: right;"></i>&nbsp;&nbsp; + ${challenge.challReward}
                                    </c:if>
                                    <c:if test="${challenge.challCategory == '3'}">
                                        <i class="far fa-clipboard" style="font-size: 25px; "></i>&nbsp;&nbsp;게시판활동&nbsp;&nbsp;
                                        <i class="fas fa-coins" style="font-size: 25px; text-align: right;"></i>&nbsp;&nbsp; + ${challenge.challReward}
                                    </c:if>
                                </small>
                            </a>
                            <br>
                        </c:forEach>
                    </div>
                    <!-- PageNavigation 선택 페이지 값을 보내는 부분 -->
                    <input type="hidden" id="currentPage" name="currentPage" value="" />
		            </div>
		            </form>
		
		            <br>
		            <br>
		
		            <!-- PageNavigation Start... -->
		            <jsp:include page="../common/pageNavigator_new.jsp" />
		            <!-- PageNavigation End... -->
	       	 </ul>
	        </div>
	        <div class="rightToolbar2">
	            <jsp:include page="/layout/right.jsp" />
	        </div>
	    </div>
	    
	</body>
</html>