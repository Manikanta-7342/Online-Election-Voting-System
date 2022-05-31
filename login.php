<?php include ('head.php');?>
<body>
    <?php include ('index_banner.php');?>

    <div class="container">
        <div class="row">
           
                <div class="menue">
                    
            </div>
            &nbsp;&nbsp;&nbsp;
            <div class="col-md-4 col-md-offset-4">
			
                <div class="login-panel"><!-- has form in it-->
				
                    
                    <div class="form-panel"><center>
                        <i>Login As:</i>
                        <select onchange = "page(this.value)">
                            <option value = "admin/index.php">System Admin</option>
                            <option value = "admin2/index.php">System User</option>
                            <option selected disables>Voter</option> 
                        </select>
                        
                    </center>
                        <form role="form" method = "post" enctype = "multipart/form-data" class="index-form">
                            <div class="form-heading" style="font-weight: bold;
    background-color: #e0ab68;
    font-size: 20px;
    color: white;
    border-top-left-radius: 5px;
    border-top-right-radius: 5px;" >
                            <center>Voter Login</center>
                            </div>
                            
                                
                                <div class="" style="color: #676767;">
									<label for = "username" style="color: #676767;">Phone Number </label><br/>
										<input class="form-control" placeholder="Enter phone Number" name="idno" type="text" required = "required" autofocus>
                                </div>
								
                                <div class="form-field">
									<label for = "username" style="color: #676767;">Password: </label>
										<input class="form-control" placeholder="Enter Password" name="password" type="password" required = "required">
                                </div>
                             <br/>
                                <center><button class="btn btn-lg btn-block btn-success" name = "login" style="margin-bottom:0px;background-color: #2c264a;" width="50">Login</button><br/>Or<br/>
                                &nbsp; 
                            <a  href="register/index.php"><button type="button" class="btn btn-lg btn-success btn-block" data-dismiss="modal" style="margin-bottom:0px;background-color: #2c264a;">Register</button></a>
            
                                &nbsp;

                                <?php include ('login_query.php');
                                
                                ?>

                        </form>
                    </div>
                </div>
            </div>
        </div>
        
    </div>

  <?php include ('script.php');?>

  <script type="text/javascript">
  function page (src) {
    window.location = src;
  }
  </script>
    <!-- </?php    
        include ('footer.php');
    ?> -->

</body>

</html>
