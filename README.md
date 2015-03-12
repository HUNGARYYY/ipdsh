## ipdsh
Quickly drop an offensive ip address using iptables. An alternative to using autokey for the many iptables flags.
## Example

   >$ sh ipdrop.sh

    ***WARNING*** This script will block an IP address using iptables. Hit CTRL + C now to cancel this operation.

    Enter an Ip Address to drop:

    31.7.239.255

    Running..

    The ip Address 31.7.239.255 was sucessfuly blocked and added to dropped.log

## Sanity check and logging

The script will log every IP address dropped to the file "dropped.dat":

  >$ cat dropped.dat

    List of IP Addresses logged from ipdrop.sh

    31.7.239.255

After you run the actual script, you'll be presented with the option to read this log or exit the service.

## TODO

I'm wanting to integrate a friend's iptables save+restart script soon, as an option before cosing ipdsh.
This will make restarting iptables after dropping ip's more seamless, as the entire point of this service
is to make using iptables much quicker and human friendly.

I'm also working on a way to blacklist multiple ip addresses or ranges that is concurrent with the rest of the script.


Follow my blog at http://phzpw.github.io for more casual updates and thoughts regarding this project. 

