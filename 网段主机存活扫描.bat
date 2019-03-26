@echo off
color F0

setlocal enabledelayedexpansion

title 网段主机在线状态扫描

rem 网关 10.102.2.254
rem 子网掩码 255.255.254.0
rem ip地址段 10.102.1.31 10.102.1.150

echo.
set IP_range=10.102.1
set IP_first=31
set IP_last=150

echo ============================================================
echo 开始时间：%data%%time%

echo 起始IP：%IP_range%.%IP_first%
echo 结束IP：%IP_range%.%IP_last%

@for /l %%n in (%IP_first%,1,%IP_last%) do @ping -w 2000 -n 1 %IP_range%.%%n | findstr /i "ttl 请求超时"

set /a result=%IP_last%-%IP_first%

echo 结束时间：%data%%time%
echo 探测摄像机台数为：%result%台 
echo ============================================================

pause