FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y python3
RUN apt install python3-pip -y
RUN pip3 install flask
RUN pip3 install prometheus_client
# Create directory for file
RUN mkdir -p /apl
WORKDIR /apl
COPY api .
CMD ["./api"]
