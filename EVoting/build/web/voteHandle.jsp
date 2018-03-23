<%-- 
    Document   : voteHandle
    Created on : Mar 23, 2018, 5:33:36 AM
    Author     : deeps
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="evoting.votingDao"%> 
<%@page import="noobchain.NoobChain"%> 
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body>
        <jsp:useBean id="obj" class="evoting.votingBean"/>  
        <jsp:setProperty property="*" name="obj"/>
        <%
            String Name=obj.getName();
            //out.println(Name);
            votingDao V= new votingDao();
            V.createBlock(obj);
            out.println("Here");
            out.println(NoobChain.printChain());
        %>
        
    </body>
</html>
