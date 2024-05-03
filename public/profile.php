<?php
    require_once("config.php");

    $showError = false;
    $successMessage = false;

    if (!isset($_SESSION["logged_in"])) {
        header("Location: login.php");
    }

    if (isset($_POST["update"])) {

        $username = $_SESSION["user"];
        $pnumber = htmlspecialchars($_POST["pnum"]);
        $address = htmlspecialchars($_POST["address"]);
        $newpass = htmlspecialchars($_POST["newpass"]);
        $cnewpass = htmlspecialchars($_POST["cnewpass"]);
        $pwhash = password_hash($_POST["newpass"], PASSWORD_DEFAULT);
        // $dob = htmlspecialchars($_POST["dob"]);

        // if ($dob != "") {
        //     // convert mm/dd/yyyy to yyyy-mm-dd
        //     $dob = date("Y-m-d", strtotime($dob));
        //     $_SESSION["dob"] = $dob;
        // }
        // else {
        //     $dob = NULL;
        // }


        $db = get_pdo_connection();

        if ($newpass != $cnewpass) {
            $showError = "Passwords do not match";
        }
        else {

            $_SESSION["pnumber"] = $pnumber;

            if ($address == "") {
                // if customer removes their address
                $address = NULL;
            }

            if ($newpass != "") {
                $_SESSION["password"] = $newpass;
            }
            else {
                // if customer doesn't update password, existing password is passed
                // so password does not become null
                $newpass = $_SESSION["password"];
                $pwhash = password_hash($newpass, PASSWORD_DEFAULT);
            }

            $query = $db->prepare("CALL UpdateUserInfo(?, ?, ?, ?, ?)");
            $query->bindParam(1, $username, PDO::PARAM_STR);
            $query->bindParam(2, $pnumber, PDO::PARAM_STR);
            $query->bindParam(3, $address, PDO::PARAM_STR);
            // $query->bindParam(4, $dob, PDO::PARAM_STR);
            $query->bindParam(4, $newpass, PDO::PARAM_STR);
            $query->bindParam(5, $pwhash, PDO::PARAM_STR);

            if (!$query->execute()) {
                print_r($query->errorInfo());
            }

            $result = $query->fetch(PDO::FETCH_ASSOC);   
            
            if ($result) {

                $successMessage = "Provided information updated successfully";

                if ($result["Message"] != $successMessage) {
                    $showError = $result["Message"];
                }
                else {
                    $_SESSION["address"] = $address;
                }
            }
        }
    }
            
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Profile</title>
    <link rel="stylesheet" href="./style.css">
</head>
    <body>
        <div class="container">
            <!-- <h1 class="projname" id="projname-signup">concertRadar</h1> -->

            <ul id="navlist">
                <li><a href="index.php" style="font-size:1.5vw;">concertRadar</a></li>
                <li style="float:right;">
                    <a href="logout.php"><button id="sign-out-btn">Sign Out</button></a>
                </li>
                <li style="float:right;"><a href=# style="padding-top:24px;">PopularEvents</a></li>
                <li style="float:right;"><a href=# style="padding-top:24px;">PopularArtists</a></li>
            </ul>

            <div class="main" id="profile">
                <!-- <div id="sidebar">
                    <div class="sidebar-message">
                        <h3 class="sidebar-header" id="signuppage-sidebar-header">Welcome!</h3>
                        <p class="sidebar-text" id="signuppage-sidebar-text">Let's get started on creating your account.</p>
                    </div>
                </div> -->
                
                <!-- <h3 class="sign-header" id="username">Sign Up</h3> -->

                <form action="profile.php" class="form" id="profile-form" method="POST" autocomplete="off">
                    <div>
                        <strong><p class="input-label">USERNAME</p></strong>
                        <input type="text" id="username" value= "<?= $_SESSION["user"] ?>" readonly><br>
                    </div>

                    <div class="field">
                        <strong><p class="input-label">PHONE NUMBER</p></strong>
                        <input type="text" id="pnum" pattern="\d{3}-\d{3}-\d{4}" name="pnum" placeholder="XXX-XXX-XXXX" value= "<?= $_SESSION["pnumber"] ?>" required><br>
                    </div>

                    <div class="field">
                        <strong><p class="input-label">ADDRESS</p></strong>
                        <input type="text" id="address" name="address" value= "<?= $_SESSION["address"] ?>"><br>
                    </div>

                    <!-- <div class="field">
                        <strong><p class="input-label">DATE OF BIRTH</p></strong>
                        <input type="text" id="dob" pattern="\d{4}-\d{2}-\d{2}" name="dob" placeholder="YYYY-MM-DD"><br>
                    </div> -->

                    <div class="field">
                        <strong><p class="input-label">NEW PASSWORD</p></strong>
                        <input type="password" id="newpass" name="newpass"><br>
                    </div>

                    <div class="field">
                        <strong><p class="input-label">CONFIRM NEW PASSWORD</p></strong>
                        <input type="password" id="cnewpass" name="cnewpass"><br>
                    </div>

                    <input type="submit" class="submit" value="Update" name="update">

                    <?php
                        if ($showError) {
                            echo sprintf('<div class="error"> *%s* </div>', $showError);
                        }

                        if ($successMessage) {
                            echo sprintf('<div class="success"> *%s* </div>', $successMessage);
                        }
                    ?>

                </form>

            </div>
        </div>
    </body>
</html>