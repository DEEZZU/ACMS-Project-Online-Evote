<%-- 
    Document   : addContestant
    Created on : Jun 6, 2018, 3:53:42 PM
    Author     : deeps
--%>

<!DOCTYPE html>
<html lang="en">
<head>
  <title>Add_Contestant</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
    /* Remove the navbar's default margin-bottom and rounded borders */ 
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
  </style>
</head>
<body>

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
        <li><a href="#">Contestant Information</a></li>
        <li><a href="#">ADMIN</a></li>>
      </ul>
     <!-- <ul class="nav navbar-nav navbar-right">
        <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
      </ul>-->
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
        <h1 > Welcome  </h1>
      
      </div>
    </header>



       <header  id="about">

      <div class="container text-center"  style="width: 330px">
        <div class="row" >
          <div class="mt-5 col-md-30">
        
             <div class="col-sm-70mx-auto">
                <h2>            </h2>
                  <div class="form-group">
                    <form action="/action_page.php">
                        <fieldset class="the-fieldset">
                            <legend class="the-legend">Candidate Registration</legend>

                             <div class="col-sm-17">  
                             <div class="table-responsive">
                            <table class="table" >   
                               <tbody>
                                 <tr>
                                  <td>

                                     <input type="first name " class="form-control" id="pwd" placeholder="FIRST NAME " name="pwd"   required="required" >
                                   </td>
                                   <td>  
                                      <input type="Last name " class="form-control" id="pwd" placeholder="LAST NAME " name="pwd"  required="required">
                                  </td>
                                   </tr> 
                                     <tr>
                                  <td>

                                     <input type="Contact" class="form-control" id="pwd" placeholder="CONTACT" name="pwd"  required="required">
                                   </td>
                                   <td>  
                                      <input type="Contact" class="form-control" id="pwd" placeholder="ADHAR NUMBER" name="pwd"  required="required">
                                  </td>
                                   </tr> 
                                   <tr>  
                                    <td>
                                     <input type="text" class="form-control" id="pwd" placeholder="Email-Id" name="pwd"  required="required">
                                   </td>
                                   <td>  
                                      <input type="text" class="form-control" id="pwd" placeholder=" sex " name="pwd"  required="required">
                                  </td>
                                   </tr>
                                   
                            
                               </div>
                             </tbody>
                           </table>          
                         </fieldset>
      
             <div class="form-group" class="text-center">        
                  <div class="col-sm-offset-1 col-sm-10">
                      <button type="button" class="btn btn-primary">Submit</button>
                  </div>
                </div>
    </form>

 
          </div>
           </div>
          </div>
            
        </div>
        <form action="/action_page.php">
             <div class="form-group" class="text-center" class="container">        
                  <div class="col-sm-offset-1 col-sm-10">
                   

                  </div>
                </div>
    </form>
    
          <div class="jumbotron " style="background-color: white">
        <div class="col-md-2 px-0">
          <h1 class="display-2 font-italic"></h1>
         
          <p class="lead mb-0"><a href="#" class="text-white font-weight-bold"></a></p>
        </div>
      </div>
   
</fieldset>
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
</footer>

</body>
</html>

