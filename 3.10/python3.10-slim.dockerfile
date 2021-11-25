FROM naylscloud/python:3.10-slim

COPY ./conf/requirements.txt /tmp/requirements.txt
RUN apt-get update && \
    \
    apt-get install -y \
        build-essential \
        libssl-dev \
        libffi-dev \
        && \
    \
    pip install --no-cache-dir -r /tmp/requirements.txt && \
    \
    apt-get purge -y \
        build-essential \
        libssl-dev \
        libffi-dev \
        && \
    \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* && \
    rm -rf /usr/share/man/

COPY ./conf/start.sh /start.sh
RUN chmod +x /start.sh

COPY ./conf/gunicorn_conf.py /gunicorn_conf.py

COPY ./conf/start-reload.sh /start-reload.sh
RUN chmod +x /start-reload.sh

COPY ./app /app
WORKDIR /app

ENV PYTHONPATH=/app

EXPOSE 80

# Run the start script, it will check for an /app/prestart.sh script (e.g. for migrations)
# And then will start Gunicorn with Uvicorn
CMD ["/start.sh"]