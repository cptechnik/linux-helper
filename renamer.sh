#!/bin/bash
for file in ./*.ts ; do 
# for file in *.* ; do 
    echo "Diese Datei: $file"
    basis="${file%\.}"
    echo "Basis: $basis"
# Auslesen der .meta datei - Filmbeschreibung auslesen
    episode=$(sed -n '3p' "$file.meta" 2>/dev/null)
        echo "1 episode = $epiode"
#    episode= grep -P '\d{5,10}' "$episode"
# Dateinamen kürzen
    episode=${episode::99}
        echo "2 episode = "$episode
# Sonderzeichen eleminieren
    episode=${episode//./ }
    episode=${episode//,/ }
    episode=${episode//!/ }
    episode=${episode//\?/ }
    episode=${episode//\"/ }
    episode=${episode//:/ }
    episode=${episode//&/ }
    episode=${episode//\"/ }
    episode=${episode//"/"/ - }
# zusätliche Beschreibungen löschen
#    episode=${episode//"Reality-Dokusoap USA 2006Altersfreigabe ab 6"/ - }
    episode=${episode//"Reality-Dokusoap"/}
    episode=${episode//"Altersfreigabe"/}
    episode=${episode//"USA 2006"/}
    episode=${episode//"USA 2007"/}
    episode=${episode//"USA 2008"/}
    episode=${episode//"USA 2009"/}
    episode=${episode//"ab"/}
    episode=${episode//"6"/}
        echo "3 episode = "$episode
# ---
    alt=${file/.ts/""}
    neu=${file/.ts/ - $episode}
    echo -----------------------------
    echo ALT $alt
    echo NEU $neu
# Abfrage - soll umbenannt werden?
    echo -e "\033[1;33mSoll umbenannt werden?\033[0m" 
read -p "(j/n) ? " antwort
echo -e "\033[1;33m ANTWORT $antwort\033[0m"
if [[ $antwort == "q" ]] 
then 
exit; 
fi

if [[ $antwort != "j" ]]
then
echo -e "\033[0;32m OK, BELASSEN \033[0m"
else
echo -e "\033[1;31m UMBENENNEN: \033[0m"

# Umbenennen
    mv -v "$alt.eit" "$neu.eit"
    mv -v "$alt.ts.ap" "$neu.ts.ap"
    mv -v "$alt.ts.sc" "$neu.ts.sc"
    mv -v "$alt.ts.cuts" "$neu.ts.cuts"
    mv -v "$alt.ts.meta" "$neu.ts.meta"
    mv -v "$alt.ts" "$neu.ts"
    mv -v "$alt.mkv" "$neu.mkv"

fi

    echo -
done

exit 0