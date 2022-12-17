<div align="left">
  <img src="https://user-images.githubusercontent.com/16392542/77208906-224aa500-6aba-11ea-96bd-e81806074030.png" width="350">
</div>

## AutoML for Text, Image, and Tabular Data
**Current Version - AutoGluon v0.6.1**

[![Build Status](https://ci.gluon.ai/view/all/job/autogluon/job/master/badge/icon)](https://ci.gluon.ai/view/all/job/autogluon/job/master/)
[![Pypi Version](https://img.shields.io/pypi/v/autogluon.svg)](https://pypi.org/project/autogluon/#history)
[![Downloads](https://pepy.tech/badge/autogluon)](https://pepy.tech/project/autogluon)
![Upload Python Package](https://github.com/awslabs/autogluon/workflows/Upload%20Python%20Package/badge.svg)

AutoGluon automates machine learning tasks enabling you to easily achieve strong predictive performance in your applications.  With just a few lines of code, you can train and deploy high-accuracy machine learning and deep learning models on text, image, and tabular data.

Visit [auto.gluon.ai](https://auto.gluon.ai) for more information.

### Image Types
* `framework` - base framework image - contains AutoGluon, runtimes and necessary dependencies
* `jupyter` - image with a jupyter notebook available

### Image Tag Naming Scheme

#### CPU version
```
0.6.1-cpu-framework-ubuntu20.04-py3.8
 ^     ^   ^          ^          ^
 |     |   type       |          python version
 |     |              |
 |     |              |
 |     |              |
 |     CPU type       linux version
 |
 AutoGluon version
```
#### GPU version
```
0.6.1-cuda11.3-jupyter-ubuntu20.04-py3.8
 ^        ^    ^          ^          ^
 |        |    type       |          python version
 |        |               |
 |        cuda version    |
 |                        |
 |                        linux version
 |
 AutoGluon version
```

## Usage

Start Container and Notebook Server with GPU support

```shell
$ docker pull autogluon/autogluon:0.6.1-cuda11.3-jupyter-ubuntu20.04-py3.8
$ docker run --gpus all --shm-size=1G --rm -it -p 8888:8888 \
         autogluon/autogluon:0.6.1-cuda11.3-jupyter-ubuntu20.04-py3.8
```

Start Container and Notebook Server with CPU-only support

```shell
$ docker pull autogluon/autogluon:0.6.1-cpu-jupyter-ubuntu20.04-py3.8
$ docker run --rm --shm-size=1G -it -p 8888:8888 \
         autogluon/autogluon:0.6.1-cpu-jupyter-ubuntu20.04-py3.8
```

