<?php
    require_once("config.php");

    $result = false;
    $showError = false;
    $successMessage = "Account created successfully";

    if(isset($_POST["signup"])) {
        if ($_POST["uname"] !== "" && $_POST["address"] !== "" && $_POST["dob"] !== "" && $_POST["pass"] !== "" && $_POST["cpass"] !== "") {

            $username = htmlspecialchars($_POST["uname"]);
            $address = htmlspecialchars($_POST["address"]);
            $dob = htmlspecialchars($_POST["dob"]);
            $password = htmlspecialchars($_POST["pass"]);
            $cpassword = htmlspecialchars($_POST["cpass"]);

            $db = get_pdo_connection();

            $query = $db->prepare("CALL CreateUserAccount(?, ?, ?, ?, ?)");

            $query->bindParam(1, $username, PDO::PARAM_STR);
            $query->bindParam(2, $password, PDO::PARAM_STR);
            $query->bindParam(3, $cpassword, PDO::PARAM_STR);
            $query->bindParam(4, $address, PDO::PARAM_STR);
            $query->bindParam(5, $dob, PDO::PARAM_STR);

            if (!$query->execute()) {
                print_r($query->errorInfo());
            }

            $result = $query->fetch(PDO::FETCH_ASSOC);

            if ($result) {
                if ($result["Message"] != $successMessage) {
                    $showError = $result["Message"];
                }
                else {
                    session_start();
                    $_SESSION["logged_in"] = true;

                    $_SESSION["user"] = $username;
                    $_SESSION["password"] = $password;
                    $_SESSION["address"] = $address;
                    $_SESSION["dob"] = $dob;

                    header("Location: index.php");
                    unset($_POST["signup"]);
                }
            }
        }
        else {
            $showError = "Inputs cannot be empty";
        }
    }

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" href="./style.css">
</head>
    <body>
        <div class="container">
            <h1 class="projname" id="projname-signup">concertRadar</h1>

            <div class="main" id="main-signup">
                <div id="sidebar">
                    <h3 class="sidebar-header" id="signuppage-sidebar-header">Welcome!</h3>
                    <p class="sidebar-text" id="signuppage-sidebar-text">Let's get started on creating your account.</p>
                </div>
                
                <div id="sign-up">
                    <h3 class="sign-header" id="sign-up-header">Sign Up</h3>

                    <form action="signup.php" class="form" id="signup-form" method="POST" autocomplete="off">
                        <div>
                            <strong><p class="input-label">USERNAME</p></strong>
                            <input type="text" id="username" name="uname" placeholder="Username" required><br>
                        </div>

                        <div class="field">
                            <strong><p class="input-label">ADDRESS</p></strong>
                            <input type="text" id="address" name="address" placeholder="Address" required><br>
                        </div>

                        <div class="field">
                            <strong><p class="input-label">DATE OF BIRTH</p></strong>
                            <input type="text" id="dob" pattern="\d{4}-\d{2}-\d{2}" name="dob" placeholder="YYYY-MM-DD" required><br>
                        </div>

                        <div class="field">
                            <strong><p class="input-label">PASSWORD</p></strong>
                            <input type="password" id="password" name="pass" placeholder="Password" required><br>
                        </div>

                        <div class="field">
                            <strong><p class="input-label">CONFIRM PASSWORD</p></strong>
                            <input type="password" id="cpassword" name="cpass" placeholder="Confirm Password" required><br>
                        </div>

                        <?php
                            if ($showError) {
                                echo sprintf('<div class="error"> *%s* </div>', $showError);
                            }
                        ?>

                        <input type="submit" class="submit" value="Create Account" name="signup">

                    </form>
                </div>
            </div>

        </div>
    </body>
</html>