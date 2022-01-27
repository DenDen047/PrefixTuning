FROM pytorch/pytorch:1.10.0-cuda11.3-cudnn8-runtime

# init
RUN apt-get update
RUN apt-get upgrade -y
RUN pip install -U pip
RUN apt-get install -y git

# pip
WORKDIR /tmp
RUN git clone https://github.com/XiangLi1999/PrefixTuning.git
WORKDIR /tmp/PrefixTuning/transformers
RUN pip install -e .
# RUN pip install transformers[torch]

COPY requirements.txt .
RUN pip install -r requirements.txt

# clean
RUN rm -rf /var/lib/apt/lists/*