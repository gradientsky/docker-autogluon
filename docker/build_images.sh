# Building unofficial images
export AUTOGLUON_VERSION='0.6.1'
export OS_NAME='ubuntu20.04'
export PYTHON_VERSION='3.8'
export CUDA='11.3'

docker login -u AWS -p $(aws ecr get-login-password --region us-west-2) 763104351884.dkr.ecr.us-west-2.amazonaws.com
docker pull 763104351884.dkr.ecr.us-west-2.amazonaws.com/pytorch-training:1.12.1-cpu-py38-ubuntu20.04-sagemaker
docker pull 763104351884.dkr.ecr.us-west-2.amazonaws.com/pytorch-training:1.12.1-gpu-py38-cu113-ubuntu20.04-sagemaker

export PREFIX=$AUTOGLUON_VERSION-cpu
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker build . -f Dockerfile.cpu -t autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker build . -f Dockerfile.jupyter -t autogluon/autogluon:$PREFIX-jupyter-$SUFFIX --build-arg FROM_IMAGE=autogluon/autogluon:$PREFIX-framework-$SUFFIX

export PREFIX=$AUTOGLUON_VERSION-cuda${CUDA}
export SUFFIX=$OS_NAME-py$PYTHON_VERSION
docker build . -f Dockerfile.gpu -t autogluon/autogluon:$PREFIX-framework-$SUFFIX
docker build . -f Dockerfile.jupyter -t autogluon/autogluon:$PREFIX-jupyter-$SUFFIX --build-arg FROM_IMAGE=autogluon/autogluon:$PREFIX-framework-$SUFFIX
