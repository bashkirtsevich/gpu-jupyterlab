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

### Download public image

```
docker pull bashkirtsevich/jupyter-gpu:latest
docker run --gpus all -d -p 8888:8888 bashkirtsevich/jupyter-gpu:latest
```

#### With local folder mount
```
docker run --gpus all -d -p 8888:8888 -v ~/workspace:/src bashkirtsevich/jupyter-gpu:latest
```

## Lib versions

```
numpy==1.26.4
scipy==1.13.1
pandas==2.2.2
matplotlib==3.9.1
scikit-learn==1.5.1
transformers==4.44.2
accelerate==0.33.0
sentencepiece==0.2.0
opencv-python-headless==4.10.0.84
jupyterlab==4.2.5
```
