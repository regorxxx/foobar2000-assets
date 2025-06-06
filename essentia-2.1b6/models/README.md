# Essentia models
This folder contains a collection of pre-trained models. The models are serialized in [Protocol Buffer](https://developers.google.com/protocol-buffers/) files suitable for inference with Essentia and TensorFlow.
Additionally, some models are also available in [TensorFlow.js](https://www.tensorflow.org/js/models) format.
Each .pb file is coupled with a .json file containing its metadata.

## Links
https://essentia.upf.edu/machine_learning.html

https://mtg.github.io/essentia-labs/news/tensorflow/2020/01/16/tensorflow-models-released/


## Model naming conventions
- classifiers: `<target_task>-<architecture>-<source_task>-<version>.pb`
- classification heads: `<target_task>-<architecture>-<source_task>-<version>.pb`
- MusiCNN: `<task>-<architecture>-<version>.pb`
- OpenL3: `<architecture>-<params>-<version>.pb`
- Spleeter: `<architecture>-<params>-<version>.pb`
- TempoCNN: `<architecture>-<params>-<version>.pb`
- VGG: `<task>-<architecture>-<version>.pb`
- VGGish: `<task>-<architecture>-<version>.pb`
- YAMNet: `<task>-<architecture>-<version>.pb`
- DiscogsEffnet: `<task>-<architecture>-<batch_size>-<version>.pb`

Where:
- `<architecture>`: the architecture of the model (refers only to the source model on the transfer learning classifiers).
- `<task>` and `<source-task>`: the dataset in which the model, or the source model was trained.
- `<target-task>`: the dataset in which the target model was trained (only for the transfer learning classifiers).
- `<params>`: parameters specific to a particular family of models.
- `<version>`: represents the incremental version of the model. We do not guaranty full compatibility between different versions.
- `<batch_size>`: batch size. Applicable for models not supporting dynamic batch sizes.

All the models created by the MTG are licensed under CC BY-NC-SA 4.0 (https://creativecommons.org/licenses/by-nc-sa/4.0/) and are also available under proprietary license upon request (https://www.upf.edu/web/mtg/contact).
