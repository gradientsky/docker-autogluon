ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

LABEL maintainer="gradientsky"

USER root

# ffmpeg for matplotlib anim & dvipng+cm-super for latex labels
RUN apt-get update && \
    apt-get install -y --no-install-recommends ffmpeg dvipng cm-super && \
    apt-get clean && rm -rf /var/lib/apt/lists/*

USER $NB_UID

RUN conda clean --all -f -y && \
    fix-permissions "${CONDA_DIR}" && \
    fix-permissions "/home/${NB_USER}"

# Install Python 3 packages
ARG AUTOGLUON_VERSION='0.2.0'
RUN pip install --upgrade --no-cache-dir pip && \
    pip install --upgrade --no-cache-dir setuptools wheel && \
    pip install --upgrade --no-cache-dir 'mxnet==1.7.*' && \
    pip install --upgrade --no-cache-dir autogluon==${AUTOGLUON_VERSION}

# Import matplotlib the first time to build the font cache.
ENV XDG_CACHE_HOME="/home/${NB_USER}/.cache/"

RUN MPLBACKEND=Agg python -c "import matplotlib.pyplot" && \
    fix-permissions "/home/${NB_USER}"

USER $NB_UID

WORKDIR $HOME