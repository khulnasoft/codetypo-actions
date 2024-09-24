FROM python:3.8-alpine

# Install Git first, as it's required for pip to clone repositories
RUN apk add --no-cache git

WORKDIR /code
ADD requirements.txt /code/
RUN pip install --upgrade pip && \
    pip install -r /code/requirements.txt

ENV PYTHONPATH=/code
ADD entrypoint.sh /
RUN chmod +x /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
CMD []
