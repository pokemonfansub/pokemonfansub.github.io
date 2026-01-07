<?php
include "../function.php";
$name = "[Pokémon Fansub] Pokémon Horizons - 003 (VOSTFR-FR 1920x1080 H264 AAC).mp4";
$url = https://yourprivatehosting/torrent/debrid.php?name=" . urlencode($name) . "";
$post = http_build_query([
    'link' => "" . $link . "",
]);
$cr = curl($url, null, "false", "false", null, $post);
header("Location: " . $cr . "");
exit;
