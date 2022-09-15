<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<style>
/* header 전체 */

/* header 윗부분 */
.gnb-middle-wrap {
    height: 97px;
    background-color: #fff;
}
.gnb-inner {
    position: relative;
    height: 100%;
    width: 1200px;
    margin: 0 auto;
}

/* logo */
.header-ci {
    line-height: 97px;
    position: absolute;
    z-index: 1;
}
.header-ci a {
    display: flex;
    height: 97px;
    align-items: center;
    justify-content: center;
    vertical-align: middle;
    cursor: pointer;
}

/* search wrap */
.gnb-search-wrap {
    position: relative;
    width: 465px;
    margin: 0 auto;
}

input[type="search"] {
    position: relative;
    width: 100%;
    height: 44px;
    margin-top: 22px;
    padding: 15px 72px 15px 9px;
    border: none;
    border-bottom: 2px solid #000;
    font-size: 14px;
    z-index: 1;
}
.btn-gnb-smart {
    background: url(https://abcmart.a-rt.com/static/images/common/comm_header_icon_smart.png
) no-repeat center;
    right: 38px;
    position: absolute;
    width: 37px;
    height: 42px;
    top: 24px;
    z-index: 1;
}
.btn-gnb-search {
    background: url(https://abcmart.a-rt.com/static/images/common/comm_header_icon_search.png) no-repeat center;
    right: 0;
    position: absolute;
    width: 37px;
    height: 42px;
    top: 24px;
    z-index: 1;
}

/* list wrap */
.util-list-wrap {
    right: 0px;
    top:45px;
    -webkit-transform: translateY(-21px);
    transform: translateY(-21px);
    position: absolute;
    z-index: 1;
}
.util-list:after {
    content: '';
    display: block;
    width: 100%;
    height: 0;
    clear: both;
}
.util-list li {
    float: left;
}
/* 로그인 */
a.util-login {
    width: 25px;
    background-position-x: -88px;
}
/* 로그아웃 */
a.util-logout {
    width: 28px;
    background-position-x: -113px;
}

.util-list-wrap li a {
    background-image: url(https://abcmart.a-rt.com/static/images/common/comm_header_util_link_abc_mart.png);
    position: relative;
    display: inline-block;
    height: 31px;
    background-repeat: no-repeat;
}

.util-list li a span:not(.badge) {
    position: absolute;
    left: 50%;
    transform: translate(-50%, 0);
    bottom: -14px;
    font-size: 10px;
    color: #666;
}
/* join / 마이페이지 */
.util-list li a.util-mypage {
    width: 30px;
}
.util-list li+li {
    margin-left: 34px;
}
.util-list li a.util-cart {
    width: 25px;
    background-position-x: -63px;
}

/* header 아래부분 */
.gnb-bottom-wrap {
    background: #ee1c25;
    position: relative;
    height: 48px;
    pointer-events: none;
}
.gnb-menu-wrap {
    pointer-events: visible;
}
.gnb-menu {
    display: flex;
    justify-content: center;
    align-content: center;
    align-items: center;
    flex-wrap: nowrap;
    flex-direction: row;
}
.menu-name.spot {
    color: #ffe100;
}
.gnb-menu-depth1+.gnb-menu-depth1 .menu-name {
    padding-left: 50px;
}
.menu-name {
    position: relative;
    display: inline-block;
    color: #fff;
    padding-right: 50px;
    font-size: 17px;
    font-family: "Montserrat","Noto Sans KR",sans-serif;
    font-weight: 500;
    line-height: 48px;
    z-index: 2;
}
</style>
<div id="header-top">
    <div class="container">
        <div class="gnb-middle-wrap">
            <div class="gnb-inner">
                <h1 class="header-ci">
                    <a href="${pageContext.request.contextPath}/index.jsp"><img src="https://image.a-rt.com/art/system/site/202207/1658299296317.png"></a>
                </h1>
                <div class="gnb-search-wrap">
                    <form id="searchWordForm" name="searchWordForm" onsubmit="return false;">
                        <input type="search" id="searchBar" title="통합검색 키워드 입력" name="searchWord">
                        <button type="button" class="btn-gnb-smart" id="integSmartSearch" title="스마트 서치"></button>
                        <button type="button" class="btn-gnb-search" id="searchWordBtn"></button>
                    </form>
                </div>
                <div class="util-list-wrap">
                    <ul class="util-list">
                        <li><a href="#" class="util-login" title="로그인" onclick=""><span>LOGIN</span></a></li>
                        <li><a href="${pageContext.request.contextPath}/member/memWriteForm.jsp" class="util-mypage" title="마이페이지" onclick=""><span>JOIN</span></a></li>
                        <li><a href="#" class="util-cart" title="장바구니" onclick=""><span>CART</span><span class="badge" id="cartCounting"></span></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div> <!-- container -->
</div> <!-- header-top -->

<div id="header-nav">
    <div class="container">
        <div class="gnb-bottom-wrap">
            <div class="gnb-inner">
                <nav id="gnbMenuWrap" class="gnb-menu-wrap">
                    <ul class="gnb-menu">
                        <li class="gnb-menu-depth1">
                            <a href="#" class="menu-name spot" onclick="">BRAND</a>
                        </li>
                        <li class="gnb-menu-depth1">
                            <button type="button" class="menu-name">MEN</button>
                        </li>
                        <li class="gnb-menu-depth1">
                            <button type="button" class="menu-name">WOMEN</button>
                        </li>
                    </ul>
                </nav>
            </div>
        </div>
    </div> <!-- container -->
</div> <!--  header-nav -->