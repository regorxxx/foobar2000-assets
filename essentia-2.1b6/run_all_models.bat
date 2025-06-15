@ECHO OFF
REM Run
IF [%1]==[] goto usage
IF [%2]==[] goto usage
goto :runmodels

:runmodels
IF EXIST run_musicnn_models.bat CALL run_musicnn_models.bat %1 %2\musicnn
IF EXIST run_tempocnn_models.bat CALL run_tempocnn_models.bat %1 %2\tempocnn
IF EXIST run_tensorflow_models.bat CALL run_tensorflow_models.bat %1 %2\tensorflow
IF EXIST run_vggish_models.bat CALL run_vggish_models.bat %1 %2\vggish
IF EXIST run_svm_models.bat CALL run_svm_models.bat %1 %2\svm
EXIT /B %ERRORLEVEL%

:usage
ECHO Usage: run_models_all.bat ^<track^> ^<out^>
ECHO 	^<track^>		- Track file
ECHO 	^<out^>		- Output folder path (must be different to models folder)
EXIT /B 1