# -------- builder --------
FROM python:3.12-slim AS builder

RUN pip3 install scapy


FROM alpine:latest

RUN apk update && \
    apk add --no-cache tshark python3 py3-pip


WORKDIR /challenge

COPY challenge.pcap .

CMD echo "Welcome to the DNS Exfiltration Challenge!" && \
    echo "The flag is hidden in the 'challenge.pcap' file." && \
    echo "Use tshark or a Python script to extract it." && \
    echo "Good luck!" && \
    /bin/sh