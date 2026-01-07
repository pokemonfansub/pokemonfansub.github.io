<?php
include "../function.php";
$name = "[Pokémon Fansub] Pokémon Horizons - 007 (VOSTFR-JAP 1920x1080 H264 AAC).mp4";
$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode($name) . "";
$cr = curl($url, null, "false", "false", null, null);
header("Location: " . $cr . "");
exit;
