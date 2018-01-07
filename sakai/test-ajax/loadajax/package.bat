@ECHO OFF
REM Delete the folder "dist"
rd /S  /Q .\dist

REM call mvn clean package -Dmaven.test.skip=true
call mvn clean package

echo Prepare distribution for sakai 11.x
mkdir .\dist\components .\dist\webapps .\dist\lib
copy %USERPROFILE%\.m2\repository\org\projectlombok\lombok\1.16.14\lombok-1.16.14.jar .\dist\lib
copy .\api\target\loadajax-api-1.0-SNAPSHOT.jar .\dist\lib\loadajax-api-0.0.1.jar

xcopy .\pack\target\loadajax-pack-1.0-SNAPSHOT .\dist\components\loadajax-pack\ /S
copy .\tool\target\loadajax-tool-1.0-SNAPSHOT.war .\dist\webapps\loadajax-tool.war

