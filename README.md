# docker-autogluon

Autogluon with Jupyter docker image based on ubuntu.

This is NOT AWS-managed image.

### Tags
* 0.1.0: [autogluon](https://github.com/awslabs/autogluon/releases/tag/v0.1.0) | [docs](https://auto.gluon.ai/0.1.0/index.html)

### Usage
```
docker pull gradientsky/autogluon:0.1.0

# run Jupyter Notebook container (see token in log)
docker run -p 8888:8888 gradientsky/autogluon:0.1.0
```
