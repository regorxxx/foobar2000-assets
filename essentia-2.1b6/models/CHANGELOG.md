# Changelog

All notable changes to this repository of models will be documented in this file.

## 2025-01-28

### Changed
- Fix metadata errors in the `discogs-maest*-2`, `genre_discogs400` and the `genre_discogs519` models. 

## 2025-01-28

### Added
- Add `discogs-maest*-2` `.pb` and `.onnx` models, which optimized inference times on GPU and correctly sorted embedding layers
- Add `genre_discogs400` and `genre_discogs519` `.pb` and `.onnx` classification heads

## 2024-09-27

### Added
- Add `discogs-effnet-bs1-1.pb`, a discogs-effnet model with fixed batch size equal to 512

## 2024-08-12

### Added
- Add .onnx and .pb versions of the `discogs-maest-30s-pw-519l-*` models.

## 2024-05-02

### Changed
- Fix class label order for tonal/atonal classifiers.

## 2024-01-29

### Added
- Add `discogs-effnet-bs1-1.pb`, a discogs-effnet model with fixed batch size equal to 1

## 2023-10-18

### Added
- Add .onnx and .pb versions of `discogs-maest-*` models.

## 2023-06-13

### Added
- Addd .onnx versions of `msd-msd-musicnn` and `genre_discogs400-discogs-effnet`

## 2023-05-09

### Added
- Add legacy folder

### Changed
- Fix embedding extraction algorithm for `discogs400`
- Fix embedding extraction model for `moods_mirex`
- Update embedding extraction model link for classification heads based on `msd-musicnn`
- Update embedding extraction model link for classification heads based on `discogs-effnet`

## 2023-05-09

### Added
- Add Nsynth models.

## 2023-05-05

### Changed
- Update classification head names so that they always contain the name of their parent embedding models:
    - `effnet-discogs` -> `discogs-effnet`
    - `musicnn-msd` -> `msd-musicnn`
    - `vggish-audioset` -> `audioset-vggish`
    - `effnet-discogs_*_embeddings` `discogs_*_embeddings-effnet`
- Move `discogs-effnet-*` and `msd-musicnn-` models to `feature-extractors/`
- Update all model links according to the changes.

## 2023-05-04

### Added
- Add classification heads for models `msd-musicnn-msd-1`, and `genre_discogs4000-discogs-effnet-1`

### Changed
- Copy `discogs-effnet-*` models to `feature-extractors/discogs/effnet/*`. (WIP) remove `music-style-classification`
- Fix sample rate for `spleeter-*` models, from 48000 to 44100.

## 2023-04-27

### Added
- Add classification heads for models `fs_loop_ds-musicnn-msd-1`, `moods_mirex-musicnn-msd-1`, and `moods_mirex-vggish-audioset-1`.

## 2023-02-27

### Changed
- Update models names and metadata for the `FSD-SINet` models.

## 2023-02-16

### Changed
- Fix model links for `classification-heads`

##2023-02-15

### Changed
- Fix `approachability` and `engagement` model names, from `discogs_effnet` to `discogs-effnet` for consistency with other classification heads
- Add field `output_purpose` to all json files to identify `prediction`, or `embeddings` outputs. This field is mandatory for all the outputs. but can be an empty string when it is not relevant

## 2023-02-11

### Changed
- Rename input and output layer names for `emomusic-musicnn-msd-2.onnx` and `emomusic-vggish-audioset-2.onnx` to `embeddings` and `activations`

## 2023-02-07

### Added
- Add version 2 for `deam`, `emomusic`, and `muse models

### Changed
- Add missing reference for `deam`, `emomusic`, and `muse` models.
- Rename metric `Root Mean Squared Error` --> `Root Mean Square Error` for `deam`, `emomusic`, and `muse` models

## 2023-02-03

### Changed
- Describe embedding output for the FSD-Net models

## 2023-01-27

### Added
- Add FSD-Net models

### Changed
- Update BibTex entries for models based in alonso2020tensorflow and alonso2022music

## 2022-11-20

### Added
- Add `classification-head` models for MTG-Jamendo Dataset, MagnaTagATune and FMA_small based on `discogs-effnet`
- Add citation for models based on `discogs-effnet`
- Add .onnx version of the `effnet-discogs` feature extractors

### Changed
- Rename incorrect json files
- Rename classification heads so that they follow the convention `<target_task>-<architecture>-<source_task>-<version>`
- Normalize input and output names of the .onnx feature extractors: (melspectrogram -> embeddings/activations)
- Update de .onnc version of the `autotagging` models

## 2022-11-10

### Changed
- Update description and metrics of the classification heads

## 2022-11-08

### Changed
- Update `classification-head/*/*.onnx` so that the input is `embeddings` and the output is `activations`
- Update `music-style-classifcation/discogs-effnet/discogs-effnet-bsdynamic-1.onnx` to have dynamic batch size.


## 2022-09-27

### Added
- Add ONNX version of the classification heads and MusiCNN, VGG, VGGish, OpenL3 and YAMNet models


## 2022-08-26

### Added
- Add `classification-head` models for the taxonomies available in the `classifiers` folder. Note that these models come from different experiments so results are not expected to be exactly the same.


## 2022-06-17

### Added
- Add `classification-head` models: approachability and engagement detectors, MTG-Jamendo Dataset and MagnaTagATune taggers, a genre classifier based on the fma_small dataset, and arousal/valence detectors based on the Deam, Emomusic, and Muse datasets.
- Add `effnetdiscogs` feature extractors trained on contrastive similarity notions based on editorial metadata (artist, label, release, track, and a multi-task version combining all these).


## 2022-02-17

### Added
- Add `effnetdiscogs` models

### Changed
- Fix output layer names for `moods_mirex` models


## 2021-11-26

### Added
- Add `moods_mirex` models


## 2021-09-22

### Changed
- Update LICENSE to include CREPE and fix some typos


## 2021-08-10

### Added
- Add CREPE models and metadata

## 2021-06-30

### Added
- Add UrbanSound8k and fs_loop_ds classifiers (version 1) and their respective tensorflow-js version


## 2021-06-08

### Added
- Add YAMNet model (version 1)

### Changed
- Improve CHANGELOG.md style and add the version of the model referred on each entry
- Improve README.md
- Update LICENSE to include YAMNet


## 2021-05-11

### Added
- Add tensorflow-js version of the auto-tagging and classifier models (version matching the latest available .pb classifier)


## 2020-10-26

### Changed
- Fix swapped labels for `mood_party`, `mood_relaxed`, and `mood_sad` by updating the metadata json files (all versions)


## 2020-09-28

### Added
- Add TempoCNN models (version 3)
- Add Spleeter models (version 3)
- Add OpenL3 models (version 3)
- Add VGGish feature extractor (version 3)
- Add new MusiCNN classifiers trained with improved hyperparameters (version 2)

### Changed
- Update README.md note


## 2020-07-07

### Added
- Add VGG based models (version 2)
- Add models' documentation with .json files
- Create this CHANGELOG.md

### Changed
- Remove unnecessary `drop_out` nodes and unused `Placeholder_1` from MusiCNN based models (version 1)
- Rename existing models following the new convention. From `<target_task>-<architecture>-<source_task>.pb` to `<target_task>-<architecture>-<source_task>-<version>.pb`
- Improve output layers documentation (logits, penultimate layer, embeddings)


## 2019-31-03

### Added
- Initial MusiCNN and VGGish based models (version 1)
