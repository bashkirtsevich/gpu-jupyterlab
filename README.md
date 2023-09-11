# Jupyter Lab GPU container

This image contains Jupyter lab and CUDA drivers.

## Build

```
docker build -t jupyter-gpu .
```

## Start container

```
docker run --gpus all -d -p 8888:8888 jupyter-gpu
```

## Download public image

```
docker pull bashkirtsevich/jupyter-gpu:latest
docker run --gpus all -d -p 8888:8888 bashkirtsevich/jupyter-gpu:latest
```

P.S. Don't forget to mount any filder for workspace.

## Lib versions

```
torch==2.0.1+cu118
torchaudio==2.0.2+cu118
torchvision==0.15.2+cu118

Cython==3.0.2
jupyterlab==4.0.5
jupyterlab-pygments==0.2.2
jupyterlab_server==2.24.0
matplotlib==3.7.2
matplotlib-inline==0.1.6
nbimporter==0.3.4
opencv-python==4.8.0.76
pandas==2.0.3
Pillow==9.3.0
scikit-learn==1.3.0
scipy==1.10.1
```
