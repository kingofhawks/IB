@echo off
set JAVA_HOME=c:\jdk1.5.0
set path=%JAVA_HOME%\bin
set classpath=.;%JAVA_HOME%\lib\tools.jar;%JAVA_HOME%\lib\dt.jar
native2ascii -encoding gb2312 ApplicationResources_ZH.properties  ApplicationResources.properties
pause