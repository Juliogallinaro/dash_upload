FROM python:3.9
ENV DASH_DEBUG_MODE True

COPY ./app.py /app.py
COPY ./requirements.txt /requirements.txt

WORKDIR /

RUN set -ex && \
    pip install -r requirements.txt
EXPOSE 8050
CMD ["python", "app.py"]