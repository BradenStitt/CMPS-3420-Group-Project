<?php
    $user = "databaes";
    $dbpass = "rim)6Qvez";
    $dbname = "databaes";
    $db = new PDO("mysql:host=localhost;dbname=$dbname", $user, $dbpass, array());

    $cq = $db->prepare("select * from Customer WHERE Customer_Password IS NOT NULL");
    $cq->execute();

    $rows = $cq->fetchAll(PDO::FETCH_ASSOC);

    foreach($rows as $row) {
        $id = $row["ID"];
        $plaintext = $row["Customer_Password"];
        $hash = password_hash($plaintext, PASSWORD_DEFAULT);

        $update = $db->prepare("UPDATE Customer SET `Customer_PasswordHash` = ? WHERE ID = ?");
        $update->bindParam(1, $hash, PDO::PARAM_STR);
        $update->bindParam(2, $id, PDO::PARAM_STR);

        if (!$update->execute()) {
            print_r($db->errorInfo());
        }
    }
?>
