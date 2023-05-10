<?php
include('db.php');

$sql = "SELECT * FROM `btc_config` WHERE `id` = 1";
$result = $db->query($sql);

if ($result->num_rows > 0) {
  while($row = $result->fetch_assoc()) { $index = $row["xpath"]; }
} else {
  die("Error: Please ensure that your database has been created and connected correctly.");
}


    $xpub = '[YOUR_XPUB]';

    $command = "python3 derive_address.py $xpub $index 2>&1";
    
    $output = [];
    $return_status = null;
    exec($command, $output, $return_status);
    
        $xpub_address = implode("\n", $output);

// output address
echo $xpub_address;

// update db; +1 record for xpub's index

$newindex = $index+1;

$upsql = "UPDATE `btc_config` SET `xpath` = '$newindex' WHERE `id` = 1";
$update = $db->query($upsql);

$db->close();
?>

