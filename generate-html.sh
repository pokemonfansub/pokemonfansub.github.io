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


Nombre=1
while [ $Nombre -le 9999 ]
do
Nombreedit=$Nombre
echo $Nombre


mkdir -p "$HOME/pokemonfansub.github.io/phtml/"
cat "$HOME/pokemonfansub.github.io/include/head.html" > "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
if [ -f "$HOME/pokemonfansub.github.io/ph/$Nombreedit.php"  ]; then
   cat "$HOME/pokemonfansub.github.io/p/$Nombreedit.php" >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
   sed -i 's|#respond">|.html|g' "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
   sed -i 's|" rel="prev">|.html" rel="prev">|g' "$HOME/pokemonfansub.github.io/p/$Nombreedit.html"
   sed -i 's|?p=|phtml/|g' "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
   sed -i 's|https://pokemonfansub.alwaysdata.net|https://pokemonfansub.github.io|g' "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
else
   cat "$HOME/pokemonfansub.github.io/include/home.html" >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
fi
cat "$HOME/pokemonfansub.github.io/include/secondary.html" >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
cat "$HOME/pokemonfansub.github.io/include/footer.html" >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"
    ((Nombre++))
done

cd $HOME/pokemonfansub.github.io
git add --all *
git commit -a -m "add all new html"
git push origin main
cd $HOME
rm -rf $HOME/pokemonfansub.github.io
