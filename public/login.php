<?php
    require_once("config.php");

    $showError = false;

    if (isset($_POST["login"])) {

        if ($_POST["uname"] !== "" && $_POST["pass"] !== "") {
            $username = $_POST["uname"];
            $password = $_POST["pass"];

            $db = get_pdo_connection();

            $query = $db->prepare("SELECT Customer_Username, Customer_Address, Customer_DOB FROM Customer WHERE Customer_Username = ? AND Customer_Password = ?");

            $query->bindParam(1, $_POST["uname"], PDO::PARAM_STR);
            $query->bindParam(2, $_POST["pass"], PDO::PARAM_STR);

            if (!$query->execute()) {
                print_r($query->errorInfo());
            }

            $rows = $query->fetchAll(PDO::FETCH_ASSOC);

            if (count($rows) == 1) {
                session_start();
                $_SESSION["logged_in"] = true;

                $_SESSION["user"] = $rows[0]["Customer_Username"];
                $_SESSION["password"] = $password;
                $_SESSION["address"] = $rows[0]["Customer_Address"];
                $_SESSION["dob"] = $rows[0]["Customer_DOB"];

                header("Location: index.php");
            }
            else {
                $showError = "Incorrect username or password";
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
    <title>Sign In</title>
    <link rel="stylesheet" href="./style.css">
</head>
    <body>
        <div class="container">
            <h1 class="projname" id="projname-signin">concertRadar</h1>
            
            <div class="main">
                <div id="sign-in">
                    <h3 class="sign-header" id="sign-in-header">Sign In</h3>

                    <form action="login.php" class="form" id="login-form" method="POST" autocomplete="off">
                        <div>
                            <strong><p class="input-label">USERNAME</p></strong>
                            <input type="text" id="username" name="uname" placeholder="Username" required><br>
                        </div>

                        <div class="field">
                            <strong><p class="input-label">PASSWORD</p></strong>
                            <input type="password" id="password" name="pass" placeholder="Password" required><br>
                        </div>

                        <?php
                            if ($showError) {
                                echo sprintf('<div class="error"> *%s* </div>', $showError);
                            }
                        ?>

                        <input type="submit" class="submit" value="Sign In" name="login">

                    </form>
                </div>

                <div id="sidebar">
                    <h3 class="sidebar-header">Welcome to login</h3>
                    <p class="sidebar-text" id="loginpage-sidebar-text">Don't have an account?</p>
                    <a href="signup.php"><button id="sign-up-btn">Sign Up</button></a>
                </div>
            </div>

        </div>
    </body>
</html>