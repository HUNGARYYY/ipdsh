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


#Greetings, here is a warning.
echo ""
echo "$(tput setaf 1)***WARNING***$(tput sgr0)" This script will block an IP address using iptables. Hit CTRL + C now to cancel this operation.
echo ""
sleep 4

echo "Enter an IP Address to drop:"

#Create var and assign the ip address
read ipaddress
echo ""
echo "Running.."
echo ""
sleep 2

#LOG DOWN FOR WHAT
echo $ipaddress >> dropped.log

#Drop IP address
iptables -A INPUT -s $ipaddress -j DROP

echo "The ip Address $ipaddress was sucessfuly blocked and added to "$(tput setaf 1)"dropped.log"$(tput sgr0)""
echo ""

#Sanity check
read -p "Would you like to view the dropped.log file? <y/N> " prompt
if [[ $prompt == "y" ||
$prompt == "Y" || $prompt == "Y" || $prompt == "Yes" ]]
then
cat dropped.log
echo ""
else
        echo ""
        exit 0
fi
echo ""
echo ""
