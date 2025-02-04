# Push unofficial images
export AUTOGLUON_VERSION='1.0.0'
export OS_NAME='ubuntu20.04'
export PYTHON_VERSION='3.10'
export CUDA='11.8'

export PREFIX=$AUTOGLUON_VERSION-cpu
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker push autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker push autogluon/autogluon:$PREFIX-jupyter-$SUFFIX

export PREFIX=$AUTOGLUON_VERSION-cuda${CUDA}
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker push autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker push autogluon/autogluon:$PREFIX-jupyter-$SUFFIX
