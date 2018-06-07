<%-- 
    Document   : result
    Created on : Jun 7, 2018, 10:52:30 PM
    Author     : deeps
--%>

<%@page import="noobchain.chain"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "processing.candidateBean"%>
<%@page import= "java.util.*" %>
<%@page import= "processing.fetchCandidates" %>
        
<!DOCTYPE html>
<html lang="en">
<head>
  <title>CANDIDATE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <script>
function myFunction() {
    document.getElementById("demo").innerHTML = "Hello World";
}
</script>
  <style>
  
.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 300px}
    
    /* Set gray background color and 100% height */
    .sidenav {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
   .the-legend {
    border-style: none;
    border-width: 0;
    font-size: 14px;
    line-height: 20px;
    margin-bottom: 0;
    width: auto;
    padding: 0 10px;
    border: 1px solid #e0e0e0;
}
.the-fieldset {
    border: 1px solid #e0e0e0;
    padding: 10px;
    width : 500px; 
}
    /* Set black background color, white text and some padding */
    footer {
      background-color: teal;
      color: teal;
      padding: 15px;
      height: 50px; 
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 760px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  </style>
</head>
<body>
<%
        ArrayList<candidateBean> List = new ArrayList<candidateBean>();
        List=fetchCandidates.listCandidateDetails();
        int size;
        size=List.size();
        ArrayList<Integer> L = new ArrayList<Integer>();
        L=chain.retrieveChain();
%>
<nav class="navbar navbar-inverse" style="background-color: teal">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                      
      </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li><a href="#">Result</a></li>
        <li><a href="candidateProfile.jsp">Candidate Profile</a></li>
      </ul>
    </div>
  </div>
</nav>

      <header style="background-color: white">
      <div class="container text-center">
        <h1>                                 </h1>
        <p class="lead">                       </p>
      </div>
    </header>

  
     <header>
      <div class="container ">
        <div class="col-lg-30 mx-auto">
            <div class="mt-10 col-md-15">
       
              </div>
               <h1>   </h1>
      
             </div>
           </div>
         </div>
       </div>
    </header>



    <header  id="about">
    <div class="container text-center"  style="width:500px">
        <div class="row" >
        <div class="mt-5 col-md-20">
            <div class="col-sm-100mx-auto">
                <h2>            </h2>
                    <div class="form-group">
                        <fieldset class="the-fieldset" >
                            <legend class="the-legend">CANDIDATE</legend>
                                <div class="col-sm-17">  
                                    <p>                  </p>
                                    <table class="table">
                                        <thead>
                                        <th>CANDIDATE NAME</th>
                                        <th></th>
                                        <th>VOTE COUNT</th>
                                        </thead>
                                        <%
                                            for(int i=0; i<size;i++){
                                        %>
                                        <tr align="left" valign="bottom">
                                            <td>
                                            <label style="font-size: 15px; font-weight: bold; text-align:left;"><%=List.get(i).getFname()%>&nbsp;<%=List.get(i).getLname()%></label>
                                            </td>
                                            <td>
                                                
                                            </td>
                                            <td>
                                            <%=L.get(List.get(i).getCid())%>
                                            </td>
                                             
                                        </tr>
                                         <tr align="left">
                                            <td></td>
                                            <td></td>
                                            <td>
                                            </td>
                                        </tr>
                                        <%
                                            }
                                        %>
                                        </table>
                                </div>         
                        </fieldset>
                    <div class="form-group" class="text-center">        
            </div>
    

 
        </div>
            </div>
        </div>    
        </div>
        <div class="form-group" class="text-center" class="container">        
            <div class="col-sm-offset-1 col-sm-10">
            </div>
        </div>
    
    
          <div class="jumbotron " style="background-color: white">
        <div class="col-md-2 px-0">
          <h1 class="display-2 font-italic"></h1>
         
          <p class="lead mb-0"><a href="#" class="text-white font-weight-bold"></a></p>
        </div>
      </div>
    </div>>
</header>

<div class="jumbotron " style="background-color: white">
    <div class="col-md-2 px-0">
        <h1 class="display-2 font-italic"></h1>
        <p class="lead mb-0"><a href="#" class="text-white font-weight-bold"></a></p>
    </div>
</div>   

<header style="background-color: white">
    <div class="container text-center">
        <h1>                                 </h1>
        <p class="lead">                       </p>
    </div>
</header>

<header style="background-color: white">
    <div class="container text-center">
        <h1>                                 </h1>
        <p class="lead">                       </p>
    </div>
</header>


<footer class="container-fluid text-center">
    <p></p>
</footer>

</body>
</html>
