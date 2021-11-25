FROM naylscloud/python:3.8-slim-poetry

COPY ./conf/requirements.txt /tmp/requirements.txt
RUN pip install --no-cache-dir -r /tmp/requirements.txt

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