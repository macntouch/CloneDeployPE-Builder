	@echo off
	pushd %~dp0

	::	Time Zone Reference http://technet.microsoft.com/en-us/library/cc749073(v=ws.10).aspx
	set TimeZone=Eastern Standard Time
	set MyLang=en-us
	set WebURL=http://192.168.56.1/clonedeploy/service/client.asmx/
	set UniversalToken=
	set CreateISO=true
	
	set PLATFORM=x64
	set Pass=1
	call .\Scripts\MakePE.cmd
	
	set PLATFORM=x86
	set Pass=2
	call .\Scripts\MakePE.cmd
	
	if /I %CreateISO% EQU true call .\Scripts\SuperISO.cmd
	
	echo Script Complete.
	pause