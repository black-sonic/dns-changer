@echo off
title DNS Changer
color 0A
:menu
cls
echo ==================================================
echo                DNS Changer Utility
echo ==================================================
echo Select the DNS you want to use:
echo  1. Google DNS
echo  2. Cloudflare DNS
echo  3. OpenDNS
echo  4. Comodo DNS
echo  5. Quad9 DNS
echo  6. CleanBrowsing DNS
echo  7. OpenNIC DNS
echo  8. AdGuard DNS
echo  9. Yandex DNS
echo 10. DNS.Watch
echo 11. SafeDNS
echo 12. Level3 DNS
echo 13. Verisign DNS
echo 14. NextDNS
echo 15. Smart DNS Proxy
echo 16. UncensoredDNS
echo 17. DNS Advantage
echo 18. Hurricane Electric DNS
echo 19. CIRA Canadian Shield DNS
echo 20. Neustar DNS
echo 21. Alternate DNS
echo 22. CleanMyMac X DNS
echo 23. Freenom World
echo 24. Norton ConnectSafe (retired)
echo 25. Kickass DNS
echo 26. Dandelion DNS
echo 27. Reset DNS to Automatic (DHCP)
echo 28. Exit
echo ==================================================
set /p choice=Enter your choice (1-28): 

REM Change the interface name if needed
set interface="Ethernet"

if "%choice%"=="1" goto :google
if "%choice%"=="2" goto :cloudflare
if "%choice%"=="3" goto :opendns
if "%choice%"=="4" goto :comodo
if "%choice%"=="5" goto :quad9
if "%choice%"=="6" goto :cleanbrowsing
if "%choice%"=="7" goto :opennic
if "%choice%"=="8" goto :adguard
if "%choice%"=="9" goto :yandex
if "%choice%"=="10" goto :dnswatch
if "%choice%"=="11" goto :safedns
if "%choice%"=="12" goto :level3
if "%choice%"=="13" goto :verisign
if "%choice%"=="14" goto :nextdns
if "%choice%"=="15" goto :smartdns
if "%choice%"=="16" goto :uncensored
if "%choice%"=="17" goto :advantage
if "%choice%"=="18" goto :he
if "%choice%"=="19" goto :cira
if "%choice%"=="20" goto :neustar
if "%choice%"=="21" goto :alternate
if "%choice%"=="22" goto :cleanmac
if "%choice%"=="23" goto :freenom
if "%choice%"=="24" goto :norton
if "%choice%"=="25" goto :kickass
if "%choice%"=="26" goto :dandelion
if "%choice%"=="27" goto :resetdns
if "%choice%"=="28" exit
goto :menu

:setdns
cls
echo Setting DNS: %~1
netsh interface ip set dns %interface% static %2
if not "%3"=="" netsh interface ip add dns %interface% %3 index=2
echo Done! DNS changed to %~1
pause
goto :menu

:google
call :setdns "Google DNS" 8.8.8.8 8.8.4.4
goto :eof

:cloudflare
call :setdns "Cloudflare DNS" 1.1.1.1 1.0.0.1
goto :eof

:opendns
call :setdns "OpenDNS" 208.67.222.222 208.67.220.220
goto :eof

:comodo
call :setdns "Comodo DNS" 8.26.56.26 8.20.247.20
goto :eof

:quad9
call :setdns "Quad9 DNS" 9.9.9.9 149.112.112.112
goto :eof

:cleanbrowsing
call :setdns "CleanBrowsing DNS" 185.228.168.9 185.228.169.9
goto :eof

:opennic
call :setdns "OpenNIC" 192.71.245.208 192.71.245.209
goto :eof

:adguard
call :setdns "AdGuard DNS" 94.140.14.14 94.140.15.15
goto :eof

:yandex
call :setdns "Yandex DNS" 77.88.8.8 77.88.8.1
goto :eof

:dnswatch
call :setdns "DNS.Watch" 84.200.69.80 84.200.70.40
goto :eof

:safedns
call :setdns "SafeDNS" 195.46.39.39 195.46.39.40
goto :eof

:level3
call :setdns "Level3 DNS" 4.2.2.1 4.2.2.2
goto :eof

:verisign
call :setdns "Verisign DNS" 64.6.64.6 64.6.65.6
goto :eof

:nextdns
call :setdns "NextDNS" 45.90.28.0 45.90.30.0
goto :eof

:smartdns
call :setdns "Smart DNS Proxy" 23.21.80.180 23.21.80.181
goto :eof

:uncensored
call :setdns "UncensoredDNS" 91.239.100.100 89.233.43.71
goto :eof

:advantage
call :setdns "DNS Advantage" 156.154.70.1 156.154.71.1
goto :eof

:he
call :setdns "Hurricane Electric DNS" 74.82.42.42
goto :eof

:cira
call :setdns "CIRA Canadian Shield" 149.112.121.20 149.112.122.20
goto :eof

:neustar
call :setdns "Neustar DNS" 156.154.70.5 156.154.71.5
goto :eof

:alternate
call :setdns "Alternate DNS" 76.76.19.19 76.223.122.150
goto :eof

:cleanmac
call :setdns "CleanMyMac DNS" 208.67.222.123 208.67.220.123
goto :eof

:freenom
call :setdns "Freenom World" 80.80.80.80 80.80.81.81
goto :eof

:norton
call :setdns "Norton DNS (retired)" 199.85.126.10 199.85.127.10
goto :eof

:kickass
call :setdns "Kickass DNS" 109.69.8.51 109.69.8.34
goto :eof

:dandelion
call :setdns "Dandelion DNS" 198.101.242.72 23.253.163.53
goto :eof

:resetdns
cls
echo Resetting DNS to Automatic...
netsh interface ip set dns %interface% dhcp
echo DNS has been reset to DHCP (Automatic)
pause
goto :menu

