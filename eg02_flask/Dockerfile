FROM ubuntu

RUN apt-get update
RUN apt-get install -y python3-pip
RUN apt-get clean all

# -m, create home directory
RUN useradd -m -s /bin/bash flaskuser

# change user
USER flaskuser
WORKDIR /home/flaskuser

RUN pip install flask

# copy files from outside to inside
COPY --chown=flaskuser:flaskuser hello.py /tmp/hello.py

EXPOSE 5000

CMD ["python3", "/tmp/hello.py"]
