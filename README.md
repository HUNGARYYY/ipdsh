## ipdsh
Drop an offensive ip address using iptables

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
  
