@ECHO OFF
SETLOCAL EnableDelayedExpansion
IF [%1]==[] goto usage
IF [%2]==[] goto usage
IF [%3]==[] goto usage
IF [%4]==[] goto usage
IF [%4]==[%2] (
	ECHO Output folder path can not equal to models folder.
	ECHO.
	goto usage
)
IF ["%~nx1"]==["streaming_extractor_music.exe"] (
	goto :runsvmmodels
	
) ELSE (
	goto :runtensorflowmodels
)

:runsvmmodels
SET models=!models:%parentfolder%=!
ECHO.
ECHO Running profile: %2
ECHO.
IF NOT EXIST %4 mkdir %4
"%~1" "%~3" "%~4\%~n2-out.json" "%~2" > nul 2>&1
IF %ERRORLEVEL% EQU 0 (
	IF EXIST "%~4" (
		ECHO 	Done -^> "%~4\%~n2-out.json"
	) ELSE (
		CALL :error "	Processing failed. No output."
	)
) ELSE (
	CALL :error " 	Unknown error."
)
ECHO.
EXIT /B 0

:runtensorflowmodels
SET models=!models:%parentfolder%=!
SET /A total=0
SET /A error=0
SET failed=
ECHO.
ECHO Running all models from: %2
ECHO.
IF NOT EXIST %4 mkdir %4

FOR /R %2 %%f IN (*.pb) DO (
	SET file=%%~nf
	SET out="%~4\!file:.pb=!-out.json"
	ECHO Running !file!
	IF EXIST !out! (DEL /F /Q !out!)
	IF ["%~nx1"]==["standard_tempocnn.exe"] (
		"%~1" "%~3" !out! %%f > nul 2>&1
	) ELSE IF ["%~nx1"]==["streaming_tensorflowpredict.exe"] (
		"%~1" "%~3" %%f !out! > nul 2>&1
	)  ELSE (
		"%~1" %%f "%~3" !out! > nul 2>&1
	)
	IF %ERRORLEVEL% EQU 0 (
		IF EXIST !out! (
			ECHO 	Done -^> !out:%~4\=!
		) ELSE (
			CALL :error "	Processing failed. No output."
		)
	) ELSE (
		CALL :error " 	Unknown error."
	)
	SET /A total+=1
	ECHO.
)

ECHO Executed %total% models.
IF %error% NEQ 0 (ECHO %error% models failed: %failed%)
EXIT /B 0

:error
ECHO %~1
SET /A error+=1
IF [!failed!]==[] (
	SET failed=!file!
) ELSE (
	SET failed=!failed!, !file!
)
EXIT /B

:usage
ECHO Usage: run_models.bat ^<predictor^> ^<models/yaml profile^> ^<track^> ^<out^>
ECHO 	^<predictor^>		- Executable path
ECHO 	^<models/yaml profile^>	- Tensorflow: models folder path (use 'classifiers', not 'classification-heads' models).
ECHO 				  Gaia: yaml profile file path, where SVM models folders may be speciffied.
ECHO 	^<track^>			- Track file
ECHO 	^<out^>			- Output folder path (must be different to models folder)
ECHO.
ECHO	Models may be downloaded from:
ECHO		https://essentia.upf.edu/models/classifiers/
ECHO		https://essentia.upf.edu/models/feature-extractors/
ECHO		https://essentia.upf.edu/svm_models/
EXIT /B 1