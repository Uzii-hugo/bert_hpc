#Pull base image.
FROM nvcr.io/nvidia/tensorflow:18.12-py3

RUN HOROVOD_GPU_ALLREDUCE=NCCL
RUN pip3 install --no-cache-dir horovod

RUN pip3 install git+https://github.com/NVIDIA/dllogger.git
