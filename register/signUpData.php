<?php 
    require 'dbcon.php';
								
		if (isset($_POST['save'])){
			$firstname=$_POST['firstname'];
			$lastname=$_POST['lastname'];
			$gender=$_POST['gender'];
			$id_number=$_POST['id_number'];
			$email=$_POST['email'];
			$age=$_POST['Age'];
			$password = $_POST['password'];
			$password1 = $_POST['password1'];
			$date = date("Y-m-d H:i:s");

			$query = $conn->query("SELECT * FROM voters WHERE Contact_Number='$id_number'") or die ($conn->error);
			
		$count1 = $query->fetch_array();
		if ($count1 == 0) {
			if ($password == $password1) {
				$conn->query("insert into voters(Contact_Number,password,email,firstname,lastname, gender,Age,status) VALUES('$id_number', '".md5($password)."','$email','$firstname','$lastname', '$gender', '$age','Unvoted')");
				//$conn->query("insert into voters(id_number, password, firstname,lastname, gender,Age,status) VALUES('$id_number', '".md5($password)."','$firstname','$lastname', '$gender', '$age','Unvoted')");
			?>
	            <script>
			        alert( 'Successfully Registered');
			         window.location='../login.php';
	            </script>
            <?php
			}else{
				?>
	            <script>
			        alert( 'Your Passwords Did Not Match');
			         window.location='index.php';
	            </script>
            <?php
			}
		}else{
			?>
	            <script>
			        alert( 'Phone Number Already Registered');
			         window.location='../login.php';
	            </script>
            <?php
		}
		

	}

?>


					  