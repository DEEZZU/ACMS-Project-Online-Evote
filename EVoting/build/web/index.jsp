<!DOCTYPE html>
<html lang="en">
<head>
  <title>INDEX PAGE</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    .navbar 
    {
      margin-bottom: 0;
      border-radius: 0;
      height : 200px;
    }
    
    /* Set height of the grid so .sidenav can be 100% (adjust as needed) */
    .row.content 
    {
        height: 512px
    }
    
    /* Set gray background color and 100% height */
    .sidenav 
    {
      padding-top: 20px;
      background-color: #f1f1f1;
      height: 100%;
    }
    
   .the-legend 
   {
    border-style: none;
    border-width: 0;
    font-size: 14px;
    line-height: 20px;
    margin-bottom: 0;
    width: auto;
    padding: 0 10px;
    border: 1px solid #e0e0e0;
    }
    
    .the-fieldset 
    {
    border: 1px solid #e0e0e0;
    padding: 15px;
    }
    /* Set black background color, white text and some padding */
    footer 
    {
      background-color: teal;
      color: teal;
      padding: 15px;
      height: 200px; 
    }
    
    /* On small screens, set height to 'auto' for sidenav and grid */
    @media screen and (max-width: 760px) 
    {
      .sidenav 
      {
        height: auto;
        padding: 15px;
      }
      .row.content {height:auto;} 
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
            <li><a href="candidateProfile.jsp"><font color="#000000" size="3">CANDIDATES</font></a></li>  
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

        <h1>Welcome Voter </h1>
        </div>
      </div>
    </header>

    <header  id="about">
      <div class="container text-center"  style="width: 310px">
        <div class="row" >
          <div class="mt-5 col-md-12">
            <div class="col-sm-50mx-auto">
                <h2>            </h2>
                    <div class="form-group">
                        
                        <form action="processVoterId.jsp" method="get">    
                        <fieldset class="the-fieldset">
                            <legend class="the-legend">VOTER IDENTITY</legend>
                            <div class="col-sm-10">          
                            <input type="text" class="form-control" id="vid" placeholder="ENTER VOTER ID " name="vid">
                            </div>
                        </fieldset>                     
                        <div class="form-group" class="text-center">        
                            <div class="col-sm-offset-1 col-sm-10">
                                <input type="submit" value="SUBMIT" class="btn btn-default">
                            </div>
                        </div>
                        </form>
                        
                    </div>
           </div>
          </div>    
        </div>
        <div class="jumbotron " style="background-color: white">
            <div class="col-md-2 px-0">
                <h1 class="display-2 font-italic"></h1>
                <p class="lead mb-0"><a href="#" class="text-white font-weight-bold"></a></p>
            </div>
        </div>
      </div>
    </header>

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
  <p></p>
  <p></p>
</footer>

</body>
</html>
