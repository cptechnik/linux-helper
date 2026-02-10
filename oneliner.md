# Colletion of onliners

## Rename "_" into " " (or vice versa)
* for file in 20210117_1403*;do mv -b -v "$file" "${file//"_"/" "}";done
## Renaming Videos
* for file in 202107* ;do mv -b -v "$file" "${file//\!/""}";done
* for file in 202104* ;do mv -b -v "$file" "${file//"_Altersfreigabe_ ab 6"/""}";done
* for file in 20* ;do mv -b -v "$file" "${file//"_Doku-Reihe"/" "}";done 
## Renaming when filename is too long
* for file in 20* ;do mv -b -v "$file" "file=${file::99} ";done
## bakup parition
* sudo dd if=/dev/sda2 of=/media/peter/sda5/sda2.img status=progress
* sudo dd if=/dev/sda2 status=progress | gzip >/media/peter/sda5/sda2.img.gz
## make links into directory for sorting by date and name
* bash
* `rm links/*.*;mkdir -p links && for file in *; do [ -f "$file" ] && ln -s "$PWD/$file" "links/$file"; done`
