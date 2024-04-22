<?php
    require_once("config.php");

    // Only allow logged-in users to see this page.

    if (!isset($_SESSION["logged_in"])) {
        header("Location: login.php");
    }






?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home</title>
    <link rel="stylesheet" href="./style.css">
</head>
    <body>
        <div class="container">

            <div class="header">
                <h3 class="glass" id="w-message">Welcome, <?= $_SESSION["user"] ?><h3>
            </div>

            <ul id="navlist">
                <li><a href="index.php" style="font-size:1.5vw;">concertRadar</a></li>
                <li style="float:right;">
                    <a href="logout.php"><button id="sign-out-btn">Sign Out</button></a>
                </li>
                <li style="float:right;"><a href=# style="padding-top:24px;">PopularEvents</a></li>
                <li style="float:right;"><a href=# style="padding-top:24px;">PopularArtists</a></li>
            </ul>





        </div>
    </body>
</html>