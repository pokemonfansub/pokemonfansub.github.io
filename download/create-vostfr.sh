#!/bin/bash
HOME=/home/pokemonfansub/www/
cd $HOME
Nombre=1
while [ $Nombre -le 122 ]
do
if [ ${#Nombre} == 1 ]
then
    Nombreedit=00$Nombre
elif [ ${#Nombre} == 2 ]
then
    Nombreedit=0$Nombre
else
    Nombreedit=$Nombre
fi
echo $Nombre
cat > $HOME/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-FR-1920x1080-H264-AAC.mp4.php <<EOF
<?php
include "../function.php";
\$name = "[Pokémon Fansub] Pokémon Horizons - $Nombreedit (VOSTFR-FR 1920x1080 H264 AAC).mp4";
\$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode(\$name) . "";
\$cr = curl(\$url, null, "false", "false", null, null);
header("Location: " . \$cr . "");
exit;
EOF

cat > $HOME/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-JAP-1920x1080-H264-AAC.mp4.php <<EOF
<?php
include "../function.php";
\$name = "[Pokémon Fansub] Pokémon Horizons - $Nombreedit (VOSTFR-JAP 1920x1080 H264 AAC).mp4";
\$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode(\$name) . "";
\$cr = curl(\$url, null, "false", "false", null, null);
header("Location: " . \$cr . "");
exit;
EOF

#cat > $HOME/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-SoftSub-1920x1080-H264-AAC.mkv.php <<EOF
#<?php
#include "../function.php";
#$name = "[Pokémon Fansub] Pokémon Horizons (Pocket Monsters 2023) - Partie 1 - Le départ de Liko et Rhod (001-025) [VOSTFR SoftSub]/[Pokémon Fansub] Pokémon Horizons (Pocket Monsters 2023) - Partie 1 - Le départ de Liko et Rhod (001-025) [VOSTFR SoftSub]/[Pokémon Fansub] Pokémon Horizons - $Nombreedit (VOSTFR-SoftSub 1920x1080 H264 AAC).mkv";
#\$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode(\$name) . "";
#\$cr = curl(\$url, null, "false", "false", null, null);
#header("Location: " . \$cr . "");
#exit;
#EOF



    ((Nombre++))
done
