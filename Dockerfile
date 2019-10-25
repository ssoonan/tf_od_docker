FROM tensorflow_detection:0.0.1
# FROM tensorflow_detection:0.0.1-cpu

RUN pip install sagemaker-containers

COPY ocr_label_map.pbtxt ocr_label_map.pbtxt

COPY pretrained.ckpt.index  pretrained.ckpt.index
COPY pretrained.ckpt.meta  pretrained.ckpt.meta
COPY pretrained.ckpt.data-00000-of-00001  pretrained.ckpt.data-00000-of-00001

COPY pipeline.config pipeline.config


ENV PATH="/opt/ml/code:${PATH}"
ENV PYTHONPATH=:/opt/ml/code:/opt/ml/code/slim

ENV SAGEMAKER_PROGRAM object_detection.model_main.py

