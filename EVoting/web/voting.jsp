<%-- 
    Document   : voting
    Created on : Mar 12, 2018, 7:35:33 PM
    Author     : Eva
--%>

<!DOCTYPE html>
<html>
<style>
</style>
<title>VOTING </title>
<meta name="viewport" content="width=50px, initial-scale=13">
<link rel="stylesheet" href="css\style.css">
<body>

<div class="w3-container w3-padding-48 w3-teal">

            <p>
            <button class=" w3-button w3-white w3-padding-large">Result </button>
            &nbsp; &nbsp; &nbsp;
            <button class="w3-button w3-white w3-padding-large ">Candidate Profile </button>
            </p>

</div>

  
<div class="w3-container w3-padding-64 w3-white">
<div class="w3-container w3-center">

                 <h1> <candidate demo></h1>	
                 <form action="voteHandle.jsp" method="post">
                 <div style="margin-bottom:20px ;margin-left:460px ;margin-right:460px;">
<div class="fieldset"  style="widht:700px" >s
    <legend style="margin-left:150px">VOTE</legend>

	<p style="text-align:center; "><b>KINDLY SELECT THE CANDIDATE FOR PRESIDENT POST  </b></p>

                                    <select name="name" required="required"><br>
                                    	<option></option>
                                        <option value="eva">EVA</option>
                                        <option value="deepti">DEEPTI</option>
                                        <option value="khushboo">KHUSHBOO</option>
                                        <option></option>
                                    </select>

                                    <input type="submit" value="Submit">
   <p style="text-align:center; "><b>KINDLY SELECT THE CANDIDATE FOR VICE- PRESIDENT POST  </b></p>

                                    <select name="case" required="required"><br>
                                    	<option></option>
                                        <option value="text">EVA</option>
                                        <option value="text">DEEPTI</option>
                                        <option value="text">KHUSHBOO</option>
                                        <option></option>
                                         <input type="submit" value="Submit">
                                        </select>


</div>
<div class="w3-container w3-padding-48 w3-white">
</div>
</form>
</div>
</div>
<div class="footer">
<footer> </footer>	

</div>
</body>
</html> 


 