echo "deploying en-pawssant"
docker kill $(docker ps -q)
docker rm $(docker ps -a -q)
docker build -t en-pawssant .
docker run -d -p 8000:8000 en-pawssant
echo "en-pawssant deployed. listening on localhost:8000"