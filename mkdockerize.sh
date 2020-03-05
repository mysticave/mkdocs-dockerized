#Producing the website
docker run --rm --name mkdocs-produce -v $1:/docs anilmahapatra/mkdocs:$2 produce

#Running the website
docker run -d --rm -p 8000:8000 --name mkdocs-serve -v $1:/docs anilmahapatra/mkdocs:$2 serve
