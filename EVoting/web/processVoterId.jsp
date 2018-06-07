<%-- 
    Document   : processVoterId
    Created on : Jun 5, 2018, 11:51:19 AM
    Author     : deeps
--%>

<%@page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@page import= "processing.testVid"%> 
<%@page import= "processing.identity"%>
<%@page import= "java.util.Random"%>
<%@page import= "java.io.BufferedReader"%>
<%@page import = "java.io.*" %>
<%@page import= "java.io.InputStreamReader"%>
<%@page import= "java.net.URL"%>
<%@page import= "java.net.URLConnection"%> 
<%@page import= "java.net.URLEncoder"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Processing Voter Id For redirection</title>
    </head>
    <body>
        <jsp:useBean id="obj" class="processing.voterID"/>  
        <jsp:setProperty property="*" name="obj"/> 
        
        
        
        <% 
        //out.println(obj.getVid());
        String status = testVid.validate(obj);
        String role = identity.identify(obj);
        session.setAttribute("session","TRUE");
        session.setAttribute("role", role);
        String vid=request.getParameter("vid");
        session.setAttribute("vid", vid);
        //BigInteger check = new BigInteger("0");
        //out.println(status+" "+role );
       
        if(!status.equals("Not Found"))
        {  
          //out.println("You r successfully logged in");    
        String hash = "d23c1077b87827368b60ec098989a8a6099b384370ca61b3bfdb898d358531f9";
        String username= "khushboo.mcs17.du@gmail.com";
        String sender="TXTLCL";
        String test="0";  //parametr of API
        Random rand=new Random();
        int otp=rand.nextInt(9000)+1000; //9 folllowed by 0 will determine the length of otp ,here is 4 
        session.setAttribute("otp",otp);
        String message="Your%20OTP%20is%20:"+otp;  //%20 means space i.e code for space
        //out.print(message);
        URLConnection myURLConnection=null;
        URL myURL=null;
        BufferedReader reader=null;
        String encoded_message=URLEncoder.encode(message);
        String mainUrl="http://api.textlocal.in/send/?";  
        //Prepare parameter string 
        StringBuilder sbPostData= new StringBuilder(mainUrl);
        sbPostData.append("&username="+username);
        sbPostData.append("&hash="+hash); 
        sbPostData.append("&message="+message);
        sbPostData.append("&sender="+sender);
        sbPostData.append("&numbers="+status); 
        sbPostData.append("&test="+test);
        //final string
        mainUrl = sbPostData.toString();
        try
        {
        //prepare connection
        myURL = new URL(mainUrl);
        myURLConnection = myURL.openConnection();
        myURLConnection.connect();
        InputStream stream=myURLConnection.getInputStream();
        int i;
        while((i=stream.read())!=-1)
        {
            out.print((char)i);
        }
        response.sendRedirect("enterOTP.jsp");
        }
        catch (IOException e){}
        }
        else
        {
          //out.println("You r not successfully logged in");
        }
        
        %>
    </body>
</html>
