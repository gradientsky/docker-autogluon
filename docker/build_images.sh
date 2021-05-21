# Building unofficial images
export AUTOGLUON_VERSION='0.2.0'
export OS_NAME='ubuntu18.04'
export PYTHON_VERSION='3.7'
export RAPIDS_VERSION='0.19'
export CUDA='10.2'

export BUILD_TYPE='cpu'
export PREFIX=$AUTOGLUON_VERSION-$BUILD_TYPE
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker build . -f Dockerfile.cpu -t autogluon:$PREFIX-framework-$SUFFIX
docker build . -f Dockerfile.jupyter -t autogluon/autogluon:$PREFIX-jupyter-$SUFFIX --build-arg FROM_IMAGE=autogluon/autogluon:$PREFIX-framework-$SUFFIX

export BUILD_TYPE=rapids${RAPIDS_VERSION}-cuda${CUDA}
export PREFIX=$AUTOGLUON_VERSION-$BUILD_TYPE
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker build . -f Dockerfile.gpu -t autogluon:$PREFIX-framework-$SUFFIX
docker build . -f Dockerfile.jupyter -t autogluon/autogluon:$PREFIX-jupyter-$SUFFIX --build-arg FROM_IMAGE=autogluon/autogluon:$PREFIX-framework-$SUFFIX
