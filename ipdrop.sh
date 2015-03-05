#!/bin/bash

#    Quickly made with brevity by @phzpw

#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.
#
#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.


echo Enter an Ip Address to drop:

#Create var
read ipaddress

echo ""
echo "$(tput setaf 1)***WARNING***$(tput sgr0)" This will block an IP address. Hit CTRL + C now to cancel.
echo ""
sleep 4
echo Running..
echo ""
sleep 2

#Log IP address to dropped.log
echo $ipaddress >> dropped.log

#Drop IP address
iptables -A INPUT -s $ipaddress -j DROP

echo "The ip Address $ipaddress was sucessfuly blocked and added to dropped.log"

