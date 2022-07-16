[![CircleCI](https://dl.circleci.com/status-badge/img/gh/lynnemunini/ml-microservice-kubernetes/tree/main.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/lynnemunini/ml-microservice-kubernetes/tree/main)

## Overview

**Operationalize a Machine Learning Microservice API.**


Given a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). I will Operationalize a Python flask app—in a provided file, `app.py`—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

### Tasks

Project goal is to operationalize this working, machine learning microservice using [kubernetes](https://kubernetes.io/), which is an open-source system for automating the management of containerized applications. In this project I will:
* Test project code using linting
* Complete a Dockerfile to containerize this application
* Deploy containerized application using Docker and make a prediction
* Improve the log statements in the source code for this application
* Configure Kubernetes and create a Kubernetes cluster
* Deploy a container using Kubernetes and make a prediction


**Instrucrions on how to run python script and web app.**
* To run the web app, use the following command:
  ```python3 app.py```
* To run the prediction script, use the following command:
  ```./make_prediction.sh```
* To run docker container, execute the following command:
  ```./run_docker.sh```
* To deploy the container on Kubernetes cluster, execute the following command:
  ```./run_kubernetes.sh```
* To check linting on Dockerfile and python file, execute the following command:
  ```make lint```


*Files Overview*

* [Dockerfile](Dockerfile)
  
  Dockerfile is a file that contains the instructions for building a container. It imports the python:3.7.3-stretch image and runs the `app.py` file. It also specifies the port that the application will be served on. The `app.py` file is the source code for the application.

* [app.py](app.py)
  
  The `app.py` file is the source code for the application. It contains the code that makes the application work.

* [Makefile](Makefile)
  
  Makefile is a file that contains the instructions for building the project. It has instructions to install the dependencies listed in the `requirements.txt` file. It also performs the following tasks:
    * `lint`: Runs linting on the project code.
    * `test`: Runs tests on the project code.
    * `all`: Runs all of the above tasks.
  
* [Make predictions script](make_prediction.sh)
  
    The `make_prediction.sh` file is a shell script that runs the predictions. It is used to make predictions using the pre-trained model.

* [requirements.txt](requirements.txt)
  
  The `requirements.txt` file contains the dependencies that are needed to run the project.

* [Run Dockerfile](run_dockerfile.sh)
  
  The `run_dockerfile.sh` file is a shell script that runs the Dockerfile.

* [Upload to Docker Hub](upload_docker.sh)
  
  The `upload_docker.sh` file is a shell script that uploads the Docker image to Docker Hub.
  
* [Deploy to Kubernetes](run_kubernetes.sh)
  
  The `run_kubernetes.sh` file is a shell script that deploys the application to Kubernetes. 

* [CircleCI](.circleci/config.yml)
    
  The `.circleci/config.yml` file is a file that contains the instructions for running the project on CircleCI.
