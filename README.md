# linux-helper
Linux helper are small scripts, wrapper for linux.

* firefox-refresh : 
  * killall -15 firefox;sudo snap refresh;firefox &
* tls : 
  * trash-list|sort|tail
* md5file
  * md5sum $1 >$1.md5sum 
* p4 
  * ping -4 $1
* sup
  * sudo apt update; sudo apt upgrade
* tr6
  * traceroute6 $1
* ver
  * #! /bin/bash
  * echo "--------------------------------"
  * cat /etc/issue
  * echo "--------------------------------"
  * cat /etc/lsb-release
  * echo "--------------------------------"
  * mate-about -v
  * echo "--------------------------------"
  * printenv | grep XDG_CURRENT
  * echo "--------------------------------"


