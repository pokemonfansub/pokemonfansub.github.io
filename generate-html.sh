#!/bin/bash
cd $HOME
rm -rf $HOME/pokemonfansub.github.io
git clone git@github.com:pokemonfansub/pokemonfansub.github.io.git
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
cat > $HOME/pokemonfansub.github.io/video/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-FR-1920x1080-H264-AAC.mp4.php <<EOF
<?php
include "../function.php";
\$name = "[Pokémon Fansub] Pokémon Horizons - $Nombreedit (VOSTFR-FR 1920x1080 H264 AAC).mp4";
\$url = "https://yourprivatehosting/torrent/debrid.php?name=" . urlencode(\$name) . "";
\$cr = curl(\$url, null, "false", "false", null, null);
header("Location: " . \$cr . "");
exit;
EOF
    ((Nombre++))
done
