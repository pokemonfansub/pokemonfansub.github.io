<?php
include "../function.php";
$name = "Pokémon Horizons The Series S01E01-45 MULTi 1080p WEB x264 AAC -Tsundere-Raws (NF)/Pokémon Horizons The Series S01E01-45 MULTi 1080p WEB x264 AAC -Tsundere-Raws (NF)/Pokémon Horizons The Series S01E05 MULTi 1080p WEB x264 AAC -Tsundere-Raws (NF).mkv";
$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode($name) . "";
$cr = curl($url, null, "false", "false", null, null);
header("Location: " . $cr . "");
exit;
