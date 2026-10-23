FROM pytorch/pytorch:2.4.1-cuda12.1-cudnn9-runtime

ARG TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

RUN apt-get update && apt-get install -yq --no-install-recommends \
    git \
    build-essential \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /src

RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir \
    numpy==1.26.4 \
    scipy==1.13.1 \
    pandas==2.2.2 \
    matplotlib==3.9.1 \
    scikit-learn==1.5.1 \
    transformers==4.44.2 \
    accelerate==0.33.0 \
    sentencepiece==0.2.0 \
    opencv-python-headless==4.10.0.84 \
    jupyterlab==4.2.5

EXPOSE 8888

CMD [ "jupyter", "lab", "--allow-root", "--no-browser", "--port=8888", "--ip=0.0.0.0", "--NotebookApp.token=''" ]

