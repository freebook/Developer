# Sniffer

1.Connect your iOS device to your Mac via USB.

2.Get the UDID for the connected device from iTunes or organiser.

3.Open terminal in your Mac
4.type the following commands in the terminal

$ ifconfig -l // First get the current list of interfaces.

$ rvictl -s <udid> // Then run the tool with the UDID of the device.

                   // This adds a new virtual network interface rvi0.
$ ifconfig -l 
                   // Get the list of interfaces again, and you can see the new
virtual network interface, rvi0, added by the previous command.

$ sudo tcpdump -i rvi0 -w ./output.pcap // Get the traced packets and save it to a file

Note : output.pacp is the packet traced file and will be located in the systems root directory 
When you're done you can stop the process with the following command.

$ rvictl -x <udid>

open the .pacp using wireshark and do your default procedures. Thats it !!!!!!!!


```bash

netkiller-MacBook-Pro:~ skyline$ ifconfig -l
lo0 gif0 stf0 en0 en1 en2 p2p0 awdl0 bridge0

netkiller-MacBook-Pro:~ skyline$ rvictl -s c2f5e411fda97be2206fd402dbd5b0e95f46668b

Starting device c2f5e411fda97be2206fd402dbd5b0e95f46668b [SUCCEEDED] with interface rvi0


netkiller-MacBook-Pro:~ skyline$ ifconfig -l
lo0 gif0 stf0 en0 en1 en2 p2p0 awdl0 bridge0 rvi0

$ sudo tcpdump -i rvi0 -s 0 -l  -A -w - dst port 80 

```

