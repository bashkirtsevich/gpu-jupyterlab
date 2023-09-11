FROM tensorflow/tensorflow:latest-gpu

ARG TZ=Europe/Moscow
RUN ln -snf /usr/share/zoneinfo/${TZ} /etc/localtime && echo ${TZ} > /etc/timezone

RUN apt-get update \
 && apt-get -yq upgrade

WORKDIR /src

COPY torch.txt .
COPY requirements.txt .

ARG TORCH_CUDA_VERSION=cu118
RUN pip install --upgrade pip \
 && pip install -r torch.txt --index-url https://download.pytorch.org/whl/${TORCH_CUDA_VERSION} \
 && pip install -r requirements.txt

EXPOSE 8888

CMD jupyter-lab --allow-root --no-browser --port 8888 --ip 0.0.0.0 --NotebookApp.token=''
