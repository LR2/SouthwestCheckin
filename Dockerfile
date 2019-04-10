FROM python:3.7-alpine
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN apk add tzdata
RUN ln -s /usr/share/zoneinfo/America/Chicago /etc/localtime

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
