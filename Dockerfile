ARG BASE_CONTAINER=jupyter/datascience-notebook
FROM $BASE_CONTAINER

USER root

# R pre-requisites
RUN apt-get update && \
    apt-get install -y --no-install-recommends \
    fonts-dejavu \
    gfortran \
    gcc && \
    apt-get clean && rm -rf /var/lib/apt/lists/*


# Spylon-kernel
RUN pip install torch
