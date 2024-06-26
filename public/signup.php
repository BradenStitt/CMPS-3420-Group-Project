<?php
    require_once("config.php");

    $result = false;
    $showError = false;
    $successMessage = "Account created successfully";

    if (isset($_POST["signup"])) {
        if ($_POST["uname"] !== "" && $_POST["pnum"] !== "" && $_POST["pass"] !== "" && $_POST["cpass"] !== "") {

            $username = htmlspecialchars($_POST["uname"]);
            $pnumber = htmlspecialchars($_POST["pnum"]);
            $password = htmlspecialchars($_POST["pass"]);
            $cpassword = htmlspecialchars($_POST["cpass"]);
            $pwhash = password_hash($_POST["pass"], PASSWORD_DEFAULT);

            $db = get_pdo_connection();

            $query = $db->prepare("CALL CreateUserAccount(?, ?, ?, ?, ?)");

            $query->bindParam(1, $username, PDO::PARAM_STR);
            $query->bindParam(2, $password, PDO::PARAM_STR);
            $query->bindParam(3, $cpassword, PDO::PARAM_STR);
            $query->bindParam(4, $pwhash, PDO::PARAM_STR);
            $query->bindParam(5, $pnumber, PDO::PARAM_STR);

            if (!$query->execute()) {
                print_r($query->errorInfo());
            }

            $result = $query->fetch(PDO::FETCH_ASSOC);

            if ($result) {
                if ($result["Message"] != $successMessage) {
                    $showError = $result["Message"];
                }
                else {

                    $_SESSION["logged_in"] = true;

                    $_SESSION["user"] = $username;
                    $_SESSION["password"] = $password;
                    $_SESSION["pnumber"] = $pnumber;
                    $_SESSION["address"] = NULL;

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
                    <div class="sidebar-message">
                        <h3 class="sidebar-header" id="signuppage-sidebar-header">Welcome!</h3>
                        <p class="sidebar-text" id="signuppage-sidebar-text">Let's get started on creating your account.</p>
                    </div>
                </div>
                
                <div id="sign-up">
                    <h3 class="sign-header" id="sign-up-header">Sign Up</h3>

                    <form action="signup.php" class="form" id="signup-form" method="POST" autocomplete="off">
                        <div>
                            <strong><p class="input-label">USERNAME</p></strong>
                            <input type="text" id="username" name="uname" placeholder="Username" required><br>
                        </div>

                        <div class="field">
                            <strong><p class="input-label">PHONE NUMBER</p></strong>
                            <input type="text" id="pnum" pattern="\d{3}-\d{3}-\d{4}" name="pnum" placeholder="XXX-XXX-XXXX" required><br>
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