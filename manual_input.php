<?php
if (isset($_POST['xpub']) && isset($_POST['index'])) {
    $xpub = escapeshellarg($_POST['xpub']);
    $index = escapeshellarg($_POST['index']);

    $output = shell_exec("python3 derive_address.py $xpub $index");

    echo trim($output);
} else {
?>
<form method="post">
    <label for="xpub">Xpub:</label><br>
    <input type="text" id="xpub" name="xpub"><br>
    <label for="index">Index:</label><br>
    <input type="text" id="index" name="index"><br>
    <input type="submit" value="Submit">
</form>
<?php
}
?>
