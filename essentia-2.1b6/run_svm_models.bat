@ECHO OFF
REM Variables
SET bin=bin\streaming_extractor_music.exe

REM Run
IF [%1]==[] goto usage
IF [%2]==[] goto usage
IF [%3]==[] (SET profile=run_svm_models.yml) ELSE (SET profile=%3)
goto :runmodels

:runmodels
ECHO.
ECHO -----------------
ECHO SVM MODELS (GAIA)
ECHO -----------------
ECHO 	-^> run_models.bat %bin% %profile% %1 %2
run_models.bat %bin% %profile% %1 %2
EXIT /B %ERRORLEVEL%

:usage
ECHO Usage: run_svm_models.bat ^<track^> ^<out^> ^<yaml profile^>
ECHO 	^<track^>		- Track file
ECHO 	^<out^>		- Output folder path (must be different to models folder)
ECHO 	^<yaml profile^>	- yaml profile file. See: https://essentia.upf.edu/streaming_extractor_music.html#configuration
ECHO 			  If not provided, uses defaul yaml profile provided along these files.
ECHO.
ECHO	Only works with 'svm' models.
ECHO	Models may be downloaded from:
ECHO		https://essentia.upf.edu/svm_models/
EXIT /B 1