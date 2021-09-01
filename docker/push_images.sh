# Push unofficial images
export AUTOGLUON_VERSION='0.3.1'
export OS_NAME='ubuntu18.04'
export PYTHON_VERSION='3.7'
export RAPIDS_VERSION='0.19'
export CUDA='10.2'

export BUILD_TYPE='cpu'
export PREFIX=$AUTOGLUON_VERSION-$BUILD_TYPE
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker push autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker push autogluon/autogluon:$PREFIX-jupyter-$SUFFIX

export BUILD_TYPE=rapids${RAPIDS_VERSION}-cuda${CUDA}
export PREFIX=$AUTOGLUON_VERSION-$BUILD_TYPE
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker push autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker push autogluon/autogluon:$PREFIX-jupyter-$SUFFIX
