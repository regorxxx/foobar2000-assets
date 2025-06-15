@ECHO OFF
REM Variables
SET bin=bin\streaming_vggish_predict.exe
SET models=models\vggish

REM Run
IF [%1]==[] goto usage
IF [%2]==[] goto usage
goto :runmodels

:runmodels
ECHO.
ECHO --------------------------
ECHO VGGISH MODELS (TENSORFLOW)
ECHO --------------------------
ECHO 	-^> run_models.bat %bin% %models% %1 %2
run_models.bat %bin% %models% %1 %2
EXIT /B %ERRORLEVEL%

:usage
ECHO Usage: run_vggish_models.bat ^<track^> ^<out^>
ECHO 	^<track^>		- Track file
ECHO 	^<out^>		- Output folder path (must be different to models folder)
ECHO.
ECHO	Only works with 'vggish' models.
ECHO	Models may be downloaded from:
ECHO		https://essentia.upf.edu/models/classifiers/
ECHO		https://essentia.upf.edu/models/feature-extractors/
EXIT /B 1