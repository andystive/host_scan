@echo off
color F0

setlocal enabledelayedexpansion

title ������������״̬ɨ��

rem ���� 10.102.2.254
rem �������� 255.255.254.0
rem ip��ַ�� 10.102.1.31 10.102.1.150

echo.
set IP_range=10.102.1
set IP_first=31
set IP_last=150

echo ============================================================
echo ��ʼʱ�䣺%data%%time%

echo ��ʼIP��%IP_range%.%IP_first%
echo ����IP��%IP_range%.%IP_last%

@for /l %%n in (%IP_first%,1,%IP_last%) do @ping -w 2000 -n 1 %IP_range%.%%n | findstr /i "ttl ����ʱ"

set /a result=%IP_last%-%IP_first%

echo ����ʱ�䣺%data%%time%
echo ̽�������̨��Ϊ��%result%̨ 
echo ============================================================

pause