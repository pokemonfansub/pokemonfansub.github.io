#!/bin/bash
HOME=/home/pokemonfansub/www/
cd $HOME
Nombre=1
while [ $Nombre -le 45 ]
do
if [ ${#Nombre} == 1 ]
then
    Nombreedit=0$Nombre
elif [ ${#Nombre} == 2 ]
then
    Nombreedit=$Nombre
else
    Nombreedit=$Nombre
fi
echo $Nombre
cat > $HOME/download/Pokemon-Horizons-The-Series-S01E$Nombreedit-MULTi-1080p-WEB-x264-AAC-Tsundere-Raws-NF.mkv.php <<EOF
<?php
include "../function.php";
\$name = "Pokémon Horizons The Series S01E01-45 MULTi 1080p WEB x264 AAC -Tsundere-Raws (NF)/Pokémon Horizons The Series S01E01-45 MULTi 1080p WEB x264 AAC -Tsundere-Raws (NF)/Pokémon Horizons The Series S01E$Nombreedit MULTi 1080p WEB x264 AAC -Tsundere-Raws (NF).mkv";
\$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode(\$name) . "";
\$cr = curl(\$url, null, "false", "false", null, null);
header("Location: " . \$cr . "");
exit;
EOF

    ((Nombre++))
done
