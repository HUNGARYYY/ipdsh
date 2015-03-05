## ipdsh
Quickly drop an offensive ip address using iptables. An alternative to using autokey for the many iptables flags.
## Example

   >$ sh ipdrop.sh 
  
    Enter an Ip Address to drop:
    31.29.255.255 
    The ip Address 31.29.255.255 was sucessfuly blocked

## Sanity check and logging

The script will log every IP address dropped to the file "dropped.dat":

  >$ cat dropped.dat 
  
    Log of IP addresses dropped by ipdsh
    5.8.175.255
    5.44.15.255
    31.29.255.255
## TODO

I'm wanting to integrate a friend's iptables save+restart script soon, as an option before cosing ipdsh. 
This will make restarting iptables after dropping ip's more seamless, as the entire point of this service
is to make using iptables much quicker and human friendly.   
