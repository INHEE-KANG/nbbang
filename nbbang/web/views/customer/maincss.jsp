<%@page import="com.nbbang.member.model.vo.Member"%>
<%@page import="com.nbbang.customer.model.vo.CustomerCenter"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
Member loginnedMember=(Member)session.getAttribute("loginnedMember");

%>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/cstmcss/main.css" type="text/css">
<link href="https://fonts.googleapis.com/css2?family=Gothic+A1:wght@600&family=Song+Myung&display=swap"
  rel="stylesheet">


<div id="kdh-container">
  <div id="kdh-sidebar-container">
    <ul class="sidebarTitle">

      <li id="kdh-side-Title">고객센터</li>
      <li id="kdh-side-text">N빵은 고객님의<br><span>고민을</span><br>N빵해드립니다.</li>
    </ul>
    <div id="kdh-sidebar-left">

      <%if (loginnedMember==null) {%>
      <ul class="side-bar-kdh">
        <li class="cstmt-list"><a class="main-a" style="font-family: 'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/customerMain">소개글</a></li>
        <li class="cstmt-list">
          <a class="main-a" style="font-family: 'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/customer/customerQnA">문의하기</a></li>
        <li class="cstmt-list"><a class="main-a" style="font-family:  'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/notice/noticeList">소식보기</a></li>

        <li class="cstmt-list"><a class="main-a" style="font-family: 'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/customer/customerFaq">FAQ</a></li>
          </ul>
          <%}else{%>
      <ul class="side-bar-kdh">
        <% if(!loginnedMember.getNickname().equals("ADMIN")) {%>
        <li class="cstmt-list">
          <a class="main-a" style="font-family: 'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/customer/customerQnA">문의하기</a></li>
        <%} else { %>
        <li class="cstmt-list">
          <a class="main-a" style="font-family: 'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/admin/adminCustomerList?a=0">문의보기</a></li>
        <%} %>
        <li class="cstmt-list"><a class="main-a" style="font-family:  'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/notice/noticeList">소식보기</a></li>

        <li class="cstmt-list"><a class="main-a" style="font-family: 'Gothic A1', sans-serif;"
            href="<%=request.getContextPath() %>/customer/customerFaq">FAQ</a></li>

      </ul>
      <%}%>
              
              <ul class="side-bar-kdh">
                <li class="list-hiper"><a href="" class="hiper-tag" style="font-family: 'Gothic A1', sans-serif;">홈</a>
                </li>
                <li class="list-hiper"><a href="" class="hiper-tag" style="font-family: 'Gothic A1', sans-serif;">구경하기</a>
                </li>
                <li class="list-hiper"><a href="" class="hiper-tag" style="font-family: 'Gothic A1', sans-serif;">해외직구</a>
                </li>
                <li class="list-hiper"><a href="" class="hiper-tag" style="font-family: 'Gothic A1', sans-serif;">마이페이지</a></li>
              </ul>
            </div>
  </div>
  </div>
  