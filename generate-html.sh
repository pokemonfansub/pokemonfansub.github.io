#!/bin/bash
#wget https://github.com/pokemonfansub/pokemonfansub.github.io/raw/refs/heads/main/generate-html.sh -O generate-html.sh && dos2unix generate-html.sh && chmod +x generate-html.sh && ./generate-html.sh
cd $HOME
rm -rf $HOME/pokemonfansub.github.io
git clone git@github.com:pokemonfansub/pokemonfansub.github.io.git
#Nombre=1
#while [ $Nombre -le 122 ]
#do
#if [ ${#Nombre} == 1 ]
#then
#    Nombreedit=00$Nombre
#elif [ ${#Nombre} == 2 ]
#then
#    Nombreedit=0$Nombre
#else
#    Nombreedit=$Nombre
#fi
#echo $Nombre
#cat > $HOME/pokemonfansub.github.io/video/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-FR-1920x1080-H264-AAC.mp4.html <<EOF
#<video poster="https://pokemonfansub.github.io/wp-content/uploads/HZ$Nombreedit.png" controls width="100%" height="100%"/>
#    <source src="https://pokemonfansub.alwaysdata.net/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-FR-1920x1080-H264-AAC.mp4.php" type="video/mp4">
#</video>
#EOF
#cat > $HOME/pokemonfansub.github.io/video/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-JAP-1920x1080-H264-AAC.mp4.html <<EOF
#<video poster="https://pokemonfansub.github.io/wp-content/uploads/HZ$Nombreedit.png" controls width="100%" height="100%"/>
#    <source src="https://pokemonfansub.alwaysdata.net/download/Pokemon-Fansub-Pokemon-Horizons-$Nombreedit-VOSTFR-JAP-1920x1080-H264-AAC.mp4.php" type="video/mp4">
#</video>
#EOF
#    ((Nombre++))
#done


Nombre=8345
while [ $Nombre -le 8347 ]
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
<script src="https://pokemonfansub.github.io/phhtml/$Nombreedit.js"></script>
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

cd $HOME/pokemonfansub.github.io
git add --all *
git commit -a -m "add all new html"
git push origin main
cd $HOME
rm -rf $HOME/pokemonfansub.github.io
