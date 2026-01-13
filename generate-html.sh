#!/bin/bash
#wget https://pokemonfansub.github.io/generate-html.sh -O generate-html.sh && dos2unix generate-html.sh && chmod +x generate-html.sh && ./generate-html.sh
cd $HOME/pokemonfansub.github.io
git pull
if [ ! -f "$HOME/pokemonfansub.github.io/video/Pokemon-Fansub-Pokemon-Horizons-001-VOSTFR-FR-1920x1080-H264-AAC.mp4.html"  ]; then
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
fi

if [ ! -f "$HOME/pokemonfansub.github.io/phtml/1.html"  ]; then
Nombre=1
while [ $Nombre -le 9999 ]
do
Nombreedit=$Nombre
echo $Nombre
mkdir -p "$HOME/pokemonfansub.github.io/phtml/"
cat > "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"<<EOF
<!--<head star>-->
<script src="https://pokemonfansub.github.io/include/head.js"></script>
<!--<head end>-->
EOF

if [ -f "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.js"  ]; then
   echo "file "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.js" exist"
   cat >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"<<EOF
<!--<article star>-->
<script src="https://pokemonfansub.github.io/phtml/$Nombreedit.js"></script>
<!--<article end>-->
EOF
else
   echo "file "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.js" not exist"
   cat >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"<<EOF
<!--<article star>-->
<script src="https://pokemonfansub.github.io/include/home.js"></script>
<!--<article end>-->
EOF
fi
cat >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"<<EOF
<!--<secondary star>-->
<script src="https://pokemonfansub.github.io/include/secondary.js"></script>
<!--<secondary end>-->
EOF
cat >> "$HOME/pokemonfansub.github.io/phtml/$Nombreedit.html"<<EOF
<!--<footer star>-->
<script src="https://pokemonfansub.github.io/include/footer.js"></script>
<!--<footer end>-->
EOF
    ((Nombre++))
done
else
echo found add fonction
cat > $HOME/pokemonfansub.github.io/updatehtml.sh <<EOG
#!/bin/bash
Nombreedit=\$(echo \$1|sed "s|.js||g")
Nombreedit=\$(echo \$Nombreedit|sed "s|\$HOME/pokemonfansub.github.io/phtml/||g")
echo "file "\$HOME/pokemonfansub.github.io/phtml/\$Nombreedit.js" exist"
cat > "\$HOME/pokemonfansub.github.io/phtml/\$Nombreedit.html"<<EOF
<!--<head star>-->
<script src="https://pokemonfansub.github.io/include/head.js"></script>
<!--<head end>-->
EOF
cat >> "\$HOME/pokemonfansub.github.io/phtml/\$Nombreedit.html"<<EOF
<!--<article star>-->
<script src="https://pokemonfansub.github.io/phtml/\$Nombreedit.js"></script>
<!--<article end>-->
EOF
cat >> "\$HOME/pokemonfansub.github.io/phtml/\$Nombreedit.html"<<EOF
<!--<secondary star>-->
<script src="https://pokemonfansub.github.io/include/secondary.js"></script>
<!--<secondary end>-->
EOF
cat >> "\$HOME/pokemonfansub.github.io/phtml/\$Nombreedit.html"<<EOF
<!--<footer star>-->
<script src="https://pokemonfansub.github.io/include/footer.js"></script>
<!--<footer end>-->
EOF
EOG
chmod +x $HOME/pokemonfansub.github.io/updatehtml.sh
dos2unix $HOME/pokemonfansub.github.io/updatehtml.sh
find "$HOME/pokemonfansub.github.io/phtml/" -name '*.js' -exec $HOME/pokemonfansub.github.io/updatehtml.sh {} \;
rm -f $HOME/pokemonfansub.github.io/updatehtml.sh
fi

cd $HOME/pokemonfansub.github.io
git add --all *
git commit -a -m "add all new html"
git push origin main
cd $HOME
