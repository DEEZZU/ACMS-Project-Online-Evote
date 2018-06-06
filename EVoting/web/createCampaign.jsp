<%-- 
    Document   : createCampaign
    Created on : Jun 6, 2018, 3:19:48 PM
    Author     : deeps
--%>

<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Create Campaign</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <style>
    body {font-family: Arial;}
    .navbar {
      margin-bottom: 0;
      border-radius: 0;
        }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content {height: 420px}
    
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
    }
    /* Set black background color, white text and some padding */
    footer {
      background-color: teal;
      color: teal;
      padding: 15px;
       height:50px; 
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 760px) {
      .sidenav {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
    }
  

    /* Style the tab */
    .tab {
    overflow: hidden;
    border: 1px solid #ccc;
    background-color: #e6f3ff;
    }

    /* Style the buttons inside the tab */
    .tab button {
    background-color:  #e6f3ff ;
    float: left;
    border: none;
    outline: none;
    cursor: pointer;
    padding: 14px 16px;
    transition: 0.3s;
    font-size: 17px;
    }

    /* Change background color of buttons on hover */
    .tab button:hover {
    background-color: #ddd;
    }

    /* Create an active/current tablink class */
    .tab button.active {
    background-color: #b3ffd9;
    }

    /* Style the tab content */
    .tabcontent {
    background-color: #dd9b6e;
    display: none;
    padding: 6px 12px;
    border: 1px solid #ccc;
    border-top: none;
    }
    </style>
</head>
<body>
<nav class="navbar navbar-inverse" style="background-color: teal">
  <div class="container-fluid">
    <p>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
    </p>
    <p>
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
            &nbsp;
    </p> 
    <div class="navbar-header">
    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                      
    </button>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
    <ul class="nav navbar-nav">
        <li><a href="#"><font color="#000000" size="3">RESULT</font></a></li>
        <li>&nbsp;&nbsp;&nbsp;&nbsp;</li>
        <li><a href="#"><font color="#000000" size="3">CANDIDATES</font></a></li>    
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
      <div class="container text-center">
        <div class="col-lg-40 mx-auto">
            <div class="mt-5 col-md-12">
       
            </div>
        <h1>Welcome </h1>
      
      </div>
      </div>
    </header>

<div class="container">

<p>Click on the buttons inside the tabbed menu:</p>

<div class="tab">
  <button class="tablinks" onclick="openCity(event, 'London')">Campaign details </button>
  <button class="tablinks" onclick="openCity(event, 'Tokyo')">candidates</button>
</div>

<div id="London" class="tabcontent">
  <h3>DAY AND TIME </h3>
  <p> DAY : WEDNESDAY</p>
  <P>TIME :10:00AM - 4:00 PM </P>
  <h3> POSITION </h3>
  <p> This is for the position of  Class Representative in College </p>
</div>



<div id="Tokyo" class="tabcontent">
  <h3>candidates</h3>
  <p>           </p>
  <form>
    <select name="case" required="required"><br>
        <option></option>
        <option value="text">EVA</option>
        <option value="text">NEHAL</option>
        <option value="text">DEEPTI</option>
        <option value="text">KHUSHBOO</option>
        <option value="text">AYUSH</option>
        <option value="text">PUSHKAR</option>
        <option></option>
    </select>
    <input type="submit" value="Submit">
  </form>
  
</div>
<script>
function openCity(evt, cityName) {
    var i, tabcontent, tablinks;
    tabcontent = document.getElementsByClassName("tabcontent");
    for (i = 0; i < tabcontent.length; i++) {
        tabcontent[i].style.display = "none";
    }
    tablinks = document.getElementsByClassName("tablinks");
    for (i = 0; i < tablinks.length; i++) {
        tablinks[i].className = tablinks[i].className.replace("active","");
    }
    document.getElementById(cityName).style.display = "block";
    evt.currentTarget.className += "active";
}
</script>
     
</body>
</html> 
