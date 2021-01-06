FROM python:3.9

LABEL maintainer="xkumiyu <xkumiyu@gmail.com>"

COPY requirements.txt /tmp/

RUN pip install -U pip
RUN pip install --no-cache-dir -q -r /tmp/requirements.txt

CMD ["ptpython"]
