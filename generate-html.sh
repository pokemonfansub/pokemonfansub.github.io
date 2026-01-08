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
cat > $HOME/pokemonfansub.github.io/video/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-FR-1920x1080-H264-AAC.mp4.html <<EOF
<video poster="https://pokemonfansub.github.io/wp-content/uploads/HZ$Nombreedit.png" controls width="100%" height="100%"/>
    <source src="https://pokemonfansub.alwaysdata.net/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-FR-1920x1080-H264-AAC.mp4.php" type="video/mp4">
</video>
EOF
cat > $HOME/pokemonfansub.github.io/video/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-JAP-1920x1080-H264-AAC.mp4.html <<EOF
<video poster="https://pokemonfansub.github.io/wp-content/uploads/HZ$Nombreedit.png" controls width="100%" height="100%"/>
    <source src="https://pokemonfansub.alwaysdata.net/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-JAP-1920x1080-H264-AAC.mp4.php" type="video/mp4">
</video>
EOF
    ((Nombre++))
done

cd $HOME/pokemonfansub.github.io
git add --all *
git commit -a -ù "add all new html"
git push origin main
cd $HOME
rm -rf $HOME/pokemonfansub.github.io
