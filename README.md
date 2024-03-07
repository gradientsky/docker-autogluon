<div align="left">
  <img src="https://user-images.githubusercontent.com/16392542/77208906-224aa500-6aba-11ea-96bd-e81806074030.png" width="350">
</div>

## AutoML for Image, Text, Time Series, and Tabular Data

[![Latest Release](https://img.shields.io/github/v/release/autogluon/autogluon)](https://github.com/autogluon/autogluon/releases)
[![Continuous Integration](https://github.com/autogluon/autogluon/actions/workflows/continuous_integration.yml/badge.svg)](https://github.com/autogluon/autogluon/actions/workflows/continuous_integration.yml)
[![Platform Tests](https://github.com/autogluon/autogluon/actions/workflows/platform_tests-command.yml/badge.svg?event=schedule)](https://github.com/autogluon/autogluon/actions/workflows/platform_tests-command.yml)
[![Python Versions](https://img.shields.io/badge/python-3.8%20%7C%203.9%20%7C%203.10-blue)](https://pypi.org/project/autogluon/)
[![GitHub license](https://img.shields.io/badge/License-Apache_2.0-blue.svg)](./LICENSE)
[![Downloads](https://pepy.tech/badge/autogluon/month)](https://pepy.tech/project/autogluon)
[![](https://img.shields.io/discord/1043248669505368144?logo=discord&style=flat)](https://discord.gg/wjUmjqAc2N)
[![Twitter](https://img.shields.io/twitter/follow/autogluon?style=social)](https://twitter.com/autogluon)

[Install Instructions](https://auto.gluon.ai/stable/install.html) | Documentation ([Stable](https://auto.gluon.ai/stable/index.html) | [Latest](https://auto.gluon.ai/dev/index.html))

AutoGluon automates machine learning tasks enabling you to easily achieve strong predictive performance in your applications.  With just a few lines of code, you can train and deploy high-accuracy machine learning and deep learning models on image, text, time series, and tabular data.


Visit [auto.gluon.ai](https://auto.gluon.ai) for more information.

### Image Types
* `framework` - base framework image - contains AutoGluon, runtimes and necessary dependencies
* `jupyter` - image with a jupyter notebook available

### Image Tag Naming Scheme

#### CPU version
```
1.0.0-cpu-framework-ubuntu20.04-py3.10
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
1.0.0-cuda11.8-jupyter-ubuntu20.04-py3.10
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
$ docker pull autogluon/autogluon:1.0.0-cuda11.8-jupyter-ubuntu20.04-py3.10
$ docker run --gpus all --shm-size=1G --rm -it -p 8888:8888 \
         autogluon/autogluon:1.0.0-cuda11.8-jupyter-ubuntu20.04-py3.10
```

Start Container and Notebook Server with CPU-only support

```shell
$ docker pull autogluon/autogluon:1.0.0-cpu-jupyter-ubuntu20.04-py3.10
$ docker run --rm --shm-size=1G -it -p 8888:8888 \
         autogluon/autogluon:1.0.0-cpu-jupyter-ubuntu20.04-py3.10
```

