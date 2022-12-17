# Push unofficial images
export AUTOGLUON_VERSION='0.6.1'
export OS_NAME='ubuntu20.04'
export PYTHON_VERSION='3.8'
export CUDA='11.3'

export PREFIX=$AUTOGLUON_VERSION-cpu
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker push autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker push autogluon/autogluon:$PREFIX-jupyter-$SUFFIX

export PREFIX=$AUTOGLUON_VERSION-cuda${CUDA}
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker push autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker push autogluon/autogluon:$PREFIX-jupyter-$SUFFIX
