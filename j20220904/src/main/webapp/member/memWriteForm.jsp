<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <title>Document</title>
<%-- ${pageContext.request.contextPath} : Context Path을 자동으로 붙여줌 --%>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/reset.css"> 
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/main/index.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/member/checkbox.css">
   <style>
    #memWrite-wrap {height:950px; padding-bottom: 150px;}
    #memWrite-inner-contents {height:100%;}
    .memWrite-container {width: 1200px; height: inherit; margin:0 auto; background-color: #26c6da;}
    /* 온라인 회원 가입 타이틀 */
    .page-title-wrap {
        position: relative;
        margin-top: 118px;
        text-align: center;
    }
    .text-head1 {
        text-align: center;
        color: #000;
        font-family: "Montserrat","Noto Sans KR",sans-serif;
        font-size: 32px;
        font-weight: 700;
    }
    /* 약관동의 및 회원가입 틀 */
    .contents-inner.join-wrap {
        width: 800px;
        margin-left: auto;
        margin-right: auto;
    }
    .contents-inner.join-wrap {
        width: 800px;
        margin-left: auto;
        margin-right: auto;
    }
    .page-title-wrap+.contents-inner {
        margin-top: 38px;
    }
    .border-line-box-header {
        /* position: relative; */
        display: block;
    }
    /* 약관동의 head */
    .text-head2 {
        color: #000;
        font-family: "Montserrat","Noto Sans KR",sans-serif;
        font-weight: 500;
        font-size: 22px;
        letter-spacing: -1.1px;
    }
    /* 약관동의 */
    .border-line-box-header+.border-line-box, .border-line-box-header+.mypage-detail-info-box, .border-line-box-header+.mypage-complete-wrap {
        margin-top: 16px;
    }
    .border-line-box {
        border-top: 2px solid #000;
        border-bottom: 1px solid #b5b5b5;
    }
    .fold-box-list-wrap .term-check-all-wrap {
        padding: 0 20px;
        line-height: 70px;
    }
    .ui-rdo.text-medium, .ui-chk.text-medium {
        font-weight: 500;
    }
    .ui-rdo, .ui-chk {
        position: relative;
        display: inline-block;
        min-height: 20px;
        font-size: 0;
        vertical-align: top;
    }
    /* 약관동의 - fold 박스 */
    .fold-box {
	    border-bottom: 1px solid #d5d5d5;
	}
	.fold-box:first-child {
	    border-top: 1px solid #b5b5b5;
	}
	
	/* 약관동의 - fold 박스 header */
	.fold-box-header {
	    position: relative;
	    padding-right: 33px;
	    cursor: pointer;
	    font-size: 15px;
	    line-height: 70px;
	}
	.fold-box-header, .fold-box-contents {
	    padding: 0 20px;
	}
	
	/* 필수 spot */
	.fold-box-header .spot, .fold-box-contents .spot {
		color : #ee1c25;
	}
	/* fold 화살표 접혔을 때 */
	.fold-box .fold-box-header:after {
	    content: '';
	    position: absolute;
	    display: inline-block;
	    width: 13px;
	    height: 7px;
	    background: url(https://abcmart.a-rt.com/static/images/ui/fold/fold_icon_arrow.png) no-repeat 0 0;
	    right: 10px;
	    top: 32px;
	}
	/* fold 화살표 펼쳤을 때 */
	.fold-box.expanded .fold-box-header:after {
	    background-position: 0 -7px;
	}
	.fold-box .fold-box-header:after {
	    content: '';
	    position: absolute;
	    display: inline-block;
	    width: 13px;
	    height: 7px;
	    background: url(https://abcmart.a-rt.com/static/images/ui/fold/fold_icon_arrow.png) no-repeat 0 0;
	    right: 10px;
	    top: 32px;
	}
	
	/* 약관동의 - fold 박스 expanded 상태 */
	.fold-box.expanded {
	    border-bottom-color: #b5b5b5;
	}
	
	/* 약관동의 - fold 박스 contents */
	.fold-box-list-wrap .fold-box-list .fold-box .fold-box-contents {
	    max-height: 200px;
	    overflow-y: scroll;
	}
	.fold-box-contents {
	    height: 0;
    	overflow: hidden;
	}
	.fold-box.expanded .fold-box-contents {
	    padding-top: 0;
	    padding-bottom: 39px;
	}
	.fold-box-list .fold-box.expanded>.fold-box-contents {
	    height: auto;
	    padding-top: 23px;
	    padding-bottom: 23px;
	}
	.fold-box .fold-box-header, .fold-box .fold-box-contents {
	    padding: 0 20px;
	}
	.fold-box-contents .text-term, .fold-box-contents .text-term pre {
		line-height: 18px;
	    font-size: 13px;
	    letter-spacing: -.325px;
	}
	.fold-box-contents .text-term {
	    color: #666;
	}
	/* term head */
	.term-list .term-head, .term-list .term-sub-list .term-head {
	    display: block;
	    color: #000;
	    line-height: 28px;
	    font-size: 14px;
	    letter-spacing: -.7px;
	}
	/* term list */
	.term-list .term-sub-list {
	    margin-top: 3px;
	}
</style>
</head>
<body>
    <div id="wrap">
        <div id="header">
            <jsp:include page="../main/header.jsp"></jsp:include>
        </div> <!-- header -->

        <div id="memWrite-wrap">
            <div id="memWrite-inner-contents">
                <div class="memWrite-container">
                    <form id="memJoinForm" class="memJoinForm" method="post" onsubmit="return false;">
                        <div class="page-title-wrap">
                            <h2 class="text-head1">온라인회원 가입</h2>
                        </div>
                        <div class="contents-inner join-wrap">
                            <div class="border-line-box-header">
                                <span class="text-head2">약관동의</span>
                            </div>
                            <div class="border-line-box fold-box-list-wrap">
                                <div class="term-check-all-wrap">
                                    <span class="ui-chk text-medium">
                                        <input type="checkbox" id="foldCheckAll">
                                        <label for="foldCheckAll">
                                            전체 약관에 동의합니다.
                                        </label>
                                    </span>
                                </div>
                                <ul class="fold-box-list" data-type="single">
                                	<li class="fold-box expanded">
                                	<!-- <li class="fold-box"> -->
                                		<div class="fold-box-header">
                                			<span class="ui-chk">
                                				<input type="checkbox" id="foldTermCheck1" name="" value="Y">
                                				<label for="foldTermCheck1">
                                					<span class="spot">[필수]</span>
                                					사이트 이용 약관 
                                				</label>
                                			</span>
                                		</div>
                                		<div class="fold-box-contents">
                                			<div class="text-term">
                                				<div class="term-detail-wrap">
	                                				<ol class="term-list">
	                                					<li>
	                                						<span class="term-head">제1조 (목적) </span>
	                                						<ul class="term-sub-list">
																<li>이 약관은 (주)에이비씨마트코리아 회사(이하 "회사"라 함)가 운영하는 인터넷 관련 서비스(이하 "서비스"라 한다)를 이용함에 있어 회사와 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다.</li>
															</ul>
	                                					</li>
	                                					<li>
	                                						<span class="term-head">제2조 (정의)</span>
	                                						<ul class="term-sub-list">
																<li>1. "사이트"란 회사가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터, 모바일 등 정보통신 설비를 이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 영업장 또는 회사가 운영하는 웹사이트, 모바일 웹, 앱 등의 서비스를 제공하는 모든 매체를 통칭하며, 통합된 하나의 회원 계정(아이디 및 비밀번호)을 이용하여 서비스를 제공받을 수 있는 아래의 사이트를 말합니다.</li>
																<li>- www.a-rt.com</li>
																<li>- www.onthespot.co.kr</li>
																<li>- m.a-rt.com</li>
																<li>- m.onthespot.co.kr</li>
																<li>2. "이용자"란 "사이트"에 접속하여 이 약관에 따라 "사이트"가 제공하는 서비스를 받는 회원 및 비회원을 말합니다.</li>
																<li>3. ‘회원’이라 함은 "사이트"에 회원 등록을 한 자로서, "사이트"의 정보를 지속적으로 제공받으며, "사이트"가 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다.</li>
																<li>4. ‘비회원’이라 함은 회원에 가입하지 않고 "사이트"가 제공하는 서비스를 이용하는 자를 말합니다.</li>
															</ul>
	                                					</li>
	                                				</ol>
                                				</div>
                                				
                                			</div>
                                		</div>
                                	</li>
                                	<li class="fold-box">
                           
                                	</li>
                                	<li class="fold-box"></li>
                                </ul>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div> <!-- contents -->

        <div id="footer">
            <!-- <div id="footer-nav">
            <div class="container">footer-nav</div>
	        </div> -->
	        <div id="footer-info">
	            <div class="container">
	            	<jsp:include page="../main/footer.jsp"></jsp:include>
	            </div>
	        </div>
        </div> <!-- footer -->
    </div> <!-- wrap -->

<script src="https://code.jquery.com/jquery-1.11.3.js"></script>
<script>
var after = document.querySelector(".fold-box-header::after");

after.addEventListener('click', function() {
	alert('안녕?');
});
</script>
</body>
</html>