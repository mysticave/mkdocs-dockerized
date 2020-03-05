#Producing the website
docker run -it --rm -v F:\mkdocs\project:/docs stabledoc:2 produce

#Running the website
docker run -it --rm -p 8000:8000 -v $1:/docs stabledoc:2 serve
