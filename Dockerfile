FROM ubuntu:18.04
RUN apt update; apt install -y gnupg2
RUN apt install -y python3-pip
COPY ./requirements.txt /app/requirements.txt
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
ENTRYPOINT ["python3"]
CMD ["run.py"] 
