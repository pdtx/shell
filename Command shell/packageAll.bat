    <span style="font-family:SimSun;font-size:14px;">@ECHO OFF
    TITLE BAT example1
    echo -----------package All-----------
	d:
	PAUSE
	cd D:\SELab401\IssueTracker-Master\account-service
	mvn clean
	rem echo %cd%
	PAUSE
	
	cd D:\SELab401\IssueTracker-Master\project-manager
	mvn clean
	PAUSE
	cd D:\SELab401\IssueTracker-Master\scan-service
	
	mvn clean
	PAUSE
	cd D:\SELab401\IssueTracker-Master\issue-service
	mvn clean
	
    PAUSE
	</span>