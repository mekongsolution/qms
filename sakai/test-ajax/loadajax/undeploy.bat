@ECHO OFF
SET TOMCAT_SAKAI=D:\jPackages\sakai11.3-tomcat-8.5.12

ECHO Removing FileMSakai appplication from the Sakai %TOMCAT_SAKAI%

ECHO Remove folders/packages from the webapps
del /S /Q %TOMCAT_SAKAI%\webapps\loadajax.war
rd /S  /Q %TOMCAT_SAKAI%\webapps\loadajax-tool

ECHO Remove folder from the components
rd /S  /Q %TOMCAT_SAKAI%\components\loadajax-pack

ECHO Remove libraries from the lib
del /S /Q %TOMCAT_SAKAI%\lib\loadajax-api-0.0.1.jar




