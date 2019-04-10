FROM python:3.7-alpine
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt
RUN ln -s /usr/share/zoneinfo/Etc/GMT+6 /etc/localtime

COPY . .

ENTRYPOINT ["./entrypoint.sh"]
