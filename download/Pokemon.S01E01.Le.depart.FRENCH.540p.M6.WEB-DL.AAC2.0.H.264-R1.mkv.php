<?php
include "../function.php";
$name = "Pokemon.S01.FRENCH.540p.M6.WEB-DL.AAC2.0.H.264-R1/Pokemon.S01.FRENCH.540p.M6.WEB-DL.AAC2.0.H.264-R1/Pokemon.S01E01.Le.depart.FRENCH.540p.M6.WEB-DL.AAC2.0.H.264-R1.mkv";
$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode($name) . "";
$cr = curl($url, null, "false", "false", null, null);
header("Location: " . $cr . "");
exit;
