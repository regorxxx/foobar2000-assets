@ECHO OFF
REM Variables
SET bin=bin\streaming_tensorflowpredict.exe
SET models=models\tensorflow

REM Run
IF [%1]==[] goto usage
IF [%2]==[] goto usage
goto :runmodels

:runmodels
ECHO.
ECHO ---------------------------
ECHO PREDICT MODELS (TENSORFLOW)
ECHO ---------------------------
ECHO 	-^> run_models.bat %bin% %models% %1 %2
run_models.bat %bin% %models% %1 %2
EXIT /B %ERRORLEVEL%

:usage
ECHO Usage: run_tensorflow_models.bat ^<track^> ^<out^>
ECHO 	^<track^>		- Track file
ECHO 	^<out^>		- Output file path
ECHO.
ECHO	No idea what this does xd
ECHO	Models may be downloaded from:
ECHO		https://essentia.upf.edu/models/classifiers/
ECHO		https://essentia.upf.edu/models/feature-extractors/
EXIT /B 1