FROM python:3.9.10-alpine3.15

RUN pip install six
RUN pip install schedule
RUN pip install pyyaml
RUN pip install docker

RUN mkdir /yaml
RUN mkdir /entry

ADD util.py /entry/
ADD configInit.py /entry/
ADD main.py /entry/
ADD containerChecks.py /entry/

WORKDIR /entry/
CMD [ "python", "-u", "main.py" ]