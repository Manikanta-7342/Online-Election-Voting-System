<?php include ('head.php');?>

<body>

    <div id="wrapper">


        <?php include ('view_banner.php');?>
        
            <button><a href="logout.php">Logout</a></button>

        <div id="page-wrapper">

            <heading class="menue-select">
                <center>
                    <select onchange="page(this.value)">
                        <option disabled selected>Select Category</option>
                        <option value="pm_vote.php" name="pm">
                        Carnatic Vocal
                        </option>
                        <option value="cm_vote.php">Hindustani Vocal</option>
                        <option value="mla_vote.php">Kuchpudi</option>
                    </select>
                </center>

            </heading>
        </div>
        <!-- /#page-wrapper -->

    </div>
    <!-- /#wrapper -->
    <!-- </?php    
        include ('footer.php');
        ?> -->

    <script>
        function page(src) {
            window.location = src;
        }

    </script>

</body>

</html>
