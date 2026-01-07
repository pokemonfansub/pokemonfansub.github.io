<?php
include "../function.php";
$name = "Pokemon.Horizons.S02E01.Bienvenue.a.l.Academie.Orange.FRENCH.1080p.WEB.H264-THESYNDiCATE.mkv";
$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode($name) . "";
$cr = curl($url, null, "false", "false", null, null);
header("Location: " . $cr . "");
exit;
