<%-- 
    Document   : outProcess
    Created on : Jun 6, 2018, 1:13:37 PM
    Author     : deeps
--%>

<%@page import="processing.setMark"%>
<%@page import= "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<body bgcolor="grey">   
<%
int otp=(Integer)session.getAttribute("otp");
String role=(String)session.getAttribute("role");
String otpValue=request.getParameter("otpValue");
int enterOtp=Integer.parseInt(otpValue);
//int otp=1;
//int enterOtp=2;
if(otp==enterOtp)
{
    int mark;
    String v=(String)session.getAttribute("vid");
    mark=setMark.obtainMark(v);
    session.setAttribute("mark", mark);
    //out.print("OTP Successfully Verified");
    if(role.equals("A"))
    {
        //    out.println("here");
%>
    <jsp:include page="AdminMainPage.jsp"></jsp:include>
<%        
    }
    else if(role.equals("V"))
    {
%>
    <jsp:include page="voting.jsp"></jsp:include>
<%
    }
}
else
{
//out.println("OTP not matched");
session.invalidate();
}
%>
<jsp:include page="index2.jsp"></jsp:include>
</body>
</head>