# Building unofficial images
export AUTOGLUON_VERSION='1.0.0'
export OS_NAME='ubuntu20.04'
export PYTHON_VERSION='3.10'
export CUDA='11.8'

docker login -u AWS -p $(aws ecr get-login-password --region us-west-2) 763104351884.dkr.ecr.us-west-2.amazonaws.com
docker pull 763104351884.dkr.ecr.us-west-2.amazonaws.com/pytorch-training:2.0.1-cpu-py310-ubuntu20.04-sagemaker
docker pull 763104351884.dkr.ecr.us-west-2.amazonaws.com/pytorch-training:2.0.1-gpu-py310-cu118-ubuntu20.04-sagemaker

export PREFIX=$AUTOGLUON_VERSION-cpu
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker build . -f Dockerfile.cpu -t autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker build . -f Dockerfile.jupyter -t autogluon/autogluon:$PREFIX-jupyter-$SUFFIX --build-arg FROM_IMAGE=autogluon/autogluon:$PREFIX-framework-$SUFFIX

export PREFIX=$AUTOGLUON_VERSION-cuda${CUDA}
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker build . -f Dockerfile.gpu -t autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker build . -f Dockerfile.jupyter -t autogluon/autogluon:$PREFIX-jupyter-$SUFFIX --build-arg FROM_IMAGE=autogluon/autogluon:$PREFIX-framework-$SUFFIX
