Run directly the bat files.
	run_<model>_models.bat <audioInput> <outputFolder>

For ex:
	run_musicnn_models.bat "test.wav "out\musicnn"
	run_tempocnn_models.bat "test.wav" "out\tempocnn"
	run_vggish_models.bat "test.wav" "out\vggish"
	run_models_all.bat "test.wav" "out"

run_models_all.bat note:
	Will call all other bat file for given input and send output to subfolders per model.
	
run_tensorflow_models.bat note:
	Is based on 'streaming_tensorflowpredict.exe' but the input models are currently unknown so it will likely fail.

TensorFlow models (.pb files) must be downloaded separately and added to 'models\[...]' to appropiate folders.
musicnn models:
	https://essentia.upf.edu/models/classifiers/
	https://essentia.upf.edu/models/feature-extractors/
	
tempcnn models:
	https://essentia.upf.edu/models/tempo/
	
vggish models:
	https://essentia.upf.edu/models/classifiers/
	https://essentia.upf.edu/models/feature-extractors/
	
For ex:
	msd-musicnn-1.pb is downloaded from
	https://essentia.upf.edu/models/feature-extractors/musicnn/
	And must be put at 'models\musicnn\msd-musicnn-1.pb

------------------------------------------------------------download----------------------------------------------------
All models and these files may also be downloaded from mega at this folder:
https://mega.nz/folder/NNRTEBgK#Ehq_j0ad6A1BR5TzEKvZVw

There are 4 zip files:
	- essentia-2.1b6-full-win64.zip		-> All Essentia binaries (*) + tensorflow + models below
	- essentia-2.1b6-tensorflow-win64.zip	-> Binaries for TensorFlow usage (needs separate models below)
	- tensorflow_models.zip			-> Models for TensorFlow usage
	- gaia_models.zip			-> Models for Gaia usage	

(*) The full version includes other kind of executables like 'streaming_key.exe', etc. not related to ML models.
