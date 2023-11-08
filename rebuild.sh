docker container stop gb_homepage
docker container rm gb_homepage
docker image rm gb_homepage
docker build -t gb_homepage .
docker run -d -p 8081:8081 --restart always --name gb_homepage gb_homepage
