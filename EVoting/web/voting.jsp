<%-- 
    Document   : voting
    Created on : Mar 12, 2018, 7:35:33 PM
    Author     : Eva
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "processing.candidateBean"%>
<%@page import= "java.util.*" %>
<%@page import= "processing.fetchCandidates" %>
<!DOCTYPE html>
<html>
<style>
</style>
<title>VOTING </title>
<meta name="viewport" content="width=50px, initial-scale=13">
<link rel="stylesheet" href="style.css">
<body>
<%
            ArrayList<candidateBean> List = new ArrayList<candidateBean>();
            List=fetchCandidates.listCandidates();
            int size;
            size=List.size();
%>

<div class=".w3 w3-padding-48 w3-teal">

            <p>
            <button class=" w3-button w3-white w3-padding-large">Result </button>
            &nbsp; &nbsp; &nbsp;
            <button class="w3-button w3-white w3-padding-large ">Candidate Profile </button>
            </p>

</div>

  
        <div class=".w3 w3-padding-64 w3-white">
            <div class=".w3 w3-center">
                <h1> <candidate demo></h1>	
                <form action="voteHandle.jsp" method="post">
                    <div style="margin-bottom:20px ;margin-left:460px ;margin-right:460px;">
                        <div class="fieldset"  style="widht:700px" >
                            <legend style="margin-left:200px"><h4>VOTE</h4></legend>
                            <p style="text-align:center; "><b>KINDLY SELECT THE CANDIDATE</b></p>
                                    <%
                                        for(int i=0; i<size;i++){
                                    %>
                                    <span><input type="radio" name="name" value="<%=(List.get(i).getCid())%>"/></span>
                                    <label style="font-size: 15px; font-weight: bold;"><%=List.get(i).getFname()%></label><br>
                                    <%  
                                            }
                                    %> 
                                    <input type="submit" value="SUBMIT">
                        </div>
                    </div>
                </form>
            </div>

                        <div class=".w3 w3-padding-48 w3-white">    
                        </div>          
        </div>
<div class="footer">
<footer> </footer>	

</div>
</body>
</html> 


 <?select name="name" required="required"><br>
                                    	<option></option>
                                        <option value="eva">EVA</option>
                                        <option value="deepti">DEEPTI</option>
                                        <option value="khushboo">KHUSHBOO</option>
                                        <option></option>
                                    </select>

                                    <input type="submit" value="Submit">
                                    <?p style="text-align:center; "><b>KINDLY SELECT THE CANDIDATE FOR VICE- PRESIDENT POST  </b></p>

                                    <select name="case" required="required"><br>
                                    	<option></option>
                                        <option value="text">EVA</option>
                                        <option value="text">DEEPTI</option>
                                        <option value="text">KHUSHBOO</option>
                                        <option></option>
                                         <input type="submit" value="Submit">
                                        </select>
                                        
                                        </?>