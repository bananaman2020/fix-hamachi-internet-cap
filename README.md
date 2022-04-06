#  Uncap Internet Speed after using Hamachi
After using Hamachi you might find your internet speed to be limited at 180mbps even after uninstalling Hamachi on Windows

# How do you fix it?

Firstly download the "fix.bat" file from the repository.

Next open command prompt as an administrator (Right click cmd in the start menu and select "Run as administrator"

Then we CD into where the file was downloaded
```
cd C:\Users\name\Downloads
```

Now we execute the script

```
fix.bat
```

Now you should see a series of commands being run. 

```
C:\Users\User1\Desktop> fix.bat

C:\Users\User1\Desktop>echo Listing current netsh settings
Listing current netsh settings

C:\Users\User1\Desktop>netsh interface tcp show global
Querying active state...

TCP Global Parameters
----------------------------------------------
Receive-Side Scaling State          : disabled
Receive Window Auto-Tuning Level    : disabled
Add-On Congestion Control Provider  : default
ECN Capability                      : disabled
RFC 1323 Timestamps                 : allowed
Initial RTO                         : 1000
Receive Segment Coalescing State    : enabled
Non Sack Rtt Resiliency             : disabled
Max SYN Retransmissions             : 4
Fast Open                           : enabled
Fast Open Fallback                  : enabled
HyStart                             : enabled
Proportional Rate Reduction         : enabled
Pacing Profile                      : off


C:\Users\User1\Desktop>echo Setting autotuning level to normal...
Setting autotuning level to normal...

C:\Users\User1\Desktop>netsh interface tcp set global autotuninglevel=normal
Ok.


C:\Users\User1\Desktop>echo Enabling RSS....
Enabling RSS....

C:\Users\User1\Desktop>netsh interface tcp set global rss=enabled
Ok.


C:\Users\User1\Desktop>echo Settings have been applied. Try testing your internet now. Script from github.com/bananaman2020/fix-hamachi-internet-cap
Settings have been applied. Try testing your internet now. Script from github.com/bananaman2020/fix-hamachi-internet-cap
```

If you see the result "OK" the script finished succesfully. Everything should be back to normal
