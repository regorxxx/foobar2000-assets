@ECHO OFF
REM Run
IF [%1]==[] goto usage
IF [%2]==[] goto usage
goto :runmodels

:runmodels
CALL run_musicnn_models.bat %1 %2\musicnn
CALL run_tempocnn_models.bat %1 %2\tempocnn
CALL run_tensorflow_models.bat %1 %2\tensorflow
CALL run_vggish_models.bat %1 %2\vggish
CALL run_svm_models.bat %1 %2\svm
EXIT /B %ERRORLEVEL%

:usage
ECHO Usage: run_models_all.bat ^<track^> ^<out^>
ECHO 	^<track^>		- Track file
ECHO 	^<out^>		- Output folder path (must be different to models folder)
EXIT /B 1