FROM python:latest
COPY . /app
WORKDIR /app
RUN pip3 install -r requirements.txt
RUN apt update && apt upgrade -y
RUN groupadd -r gb_homepage && gb_homepage -r -g gb_homepage gb_homepage
USER gb_homepage
EXPOSE 8081
CMD [ "python3", "-m", "app" ]
