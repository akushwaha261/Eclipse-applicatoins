<%-- 
    Document   : RegisterJsp
    Created on : 20-Jan-2023, 2:06:01 pm
    Author     : kushw
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">

        <!-- Compiled and minified JavaScript -->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>
    </head>
    <body style="background: url(images/6879716.jpg); background-size: cover; background-attachment: fixed; ")>
        <div class="container">
            <div class="row">
                <div class="col m6 offset-m3">
                    <div class="card">
                        <div class="card-content">
                            <h3 style="margin-top: 10px" class="center-align" >Register Here!!</h3>
                            <h5 id="msg" ></h5>
                            
                            <div class="form center-align">
                                <form action="RegisterServlet" method="Post" id="myform">
                                    <input type="text" name="user_name" placeholder="Enter Your Name Here"/>
                                    <input type="password" name="user_password" placeholder="Enter Your Password Here"/>
                                    <input type="email" name="user_email" placeholder="Enter Your Email Here"/>
                                    <button type="submit" class="btn cyan darken-2">Submit</button>
                                </form>
                            </div>
                            
                            
                            <div class="loader center-align" style="margin-top: 20px; margin-bottom: -10px; display: none" >
                                <div class="preloader-wrapper small active">
                                <div class="spinner-layer spinner-green-only">
                                  <div class="circle-clipper left">
                                    <div class="circle"></div>
                                  </div><div class="gap-patch">
                                    <div class="circle"></div>
                                  </div><div class="circle-clipper right">
                                    <div class="circle"></div>
                                  </div>
                                </div>
                              </div>
                              <h5 class="center-align" >Please Wait...</h5>
                            </div>
                            
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script src="https://code.jquery.com/jquery-3.6.3.min.js" integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU=" crossorigin="anonymous"></script>
        <script>
            $(document).ready(function (){
                console.log("Page is ready.....")
                $("#myform").on('submit',function(event){
                    event.preventDefault();
                    var f=$(this).serialize();
                    console.log(f);
                    $(".loader").show();
                    $(".form").hide();
                    
                    $.ajax({
                      url: "RegisterServlet",
                      data: f,
                      type: 'POST',
                      success: function(data,textStatus,jqXHR){
                          console.log(data);
                          console.log("success.....");
                          $(".loader").hide();
                          $(".form").show();
                          
                      },
                      error: function(jqXHR,textStatus, errorThrown){
                          console.log(data);
                          console.log("error.....");
                          $(".loader").hide();
                          $(".form").show();
                          
                      } 
                      
                    })
                })
            })
        </script>
    </body>
</html>
