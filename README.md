<div align="left">
  <img src="https://user-images.githubusercontent.com/16392542/77208906-224aa500-6aba-11ea-96bd-e81806074030.png" width="350">
</div>

## AutoML for Text, Image, and Tabular Data
**Current Version - AutoGluon v0.3.1**

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
0.3.1-cpu-framework-ubuntu18.04-py3.7
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
See RAPIDS image prerequisites at [rapidsai/rapidsai](https://hub.docker.com/r/rapidsai/rapidsai)
```
0.3.1-rapids0.19-cuda10.2-framework-ubuntu18.04-py3.7
 ^          ^        ^    ^          ^          ^
 |          |        |    type       |          python version
 |          |        |               |
 |          |        cuda version    |
 |          |                        |
 |          RAPIDS version           linux version
 |
 AutoGluon version
```

## Usage

Start Container and Notebook Server with GPU support

```shell
$ docker pull autogluon/autogluon:0.3.1-rapids0.19-cuda10.2-jupyter-ubuntu18.04-py3.7
$ docker run --gpus all --rm -it -p 8888:8888 \
         autogluon/autogluon:0.3.1-rapids0.19-cuda10.2-jupyter-ubuntu18.04-py3.7
```

Start Container and Notebook Server with CPU-only support

```shell
$ docker pull autogluon/autogluon:0.3.1-cpu-jupyter-ubuntu18.04-py3.7
$ docker run --rm -it -p 8888:8888 \
         autogluon/autogluon:0.3.1-cpu-jupyter-ubuntu18.04-py3.7
```

