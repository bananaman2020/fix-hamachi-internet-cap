@echo off
echo Listing current netsh settings

netsh interface tcp show global

echo Setting autotuning level to normal...

netsh interface tcp set global autotuninglevel=normal

echo Enabling RSS....

netsh interface tcp set global rss=enabled

echo Settings have been applied. Try testing your internet now. Script from github.com/bananaman2020/fix-hamachi-internet-cap
