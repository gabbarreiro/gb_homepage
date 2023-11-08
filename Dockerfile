FROM python:latest
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN apt update && apt upgrade
USER gb_homepage
EXPOSE 8081
CMD [ "python3", "-m", "app" ]
