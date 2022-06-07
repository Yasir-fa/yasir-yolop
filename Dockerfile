FROM pytorch/pytorch:latest
RUN apt-get -y update
RUN apt-get -y install git
RUN apt-get -y install ffmpeg libsm6 libxext6
RUN pip install -U pip
RUN pip install torchvision
WORKDIR  /yolop
RUN git clone https://github.com/hustvl/YOLOP.git
RUN cd YOLOP && pip install -r requirements.txt
WORKDIR YOLOP
