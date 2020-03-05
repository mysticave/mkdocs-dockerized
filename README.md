# mkdocs-dockerized

### Created a new MKDocs project in my local system by using the following command:
`mkdocs new my-project`

Created a Dockerfile and an entrypoint.sh script that helps in building a docker image that can spin up a container with a MKDocs running inside it.

### To produce the website run the following command:
`docker run --rm --name mkdocs-produce -v [PATH_TO_MKDOCS_PROJECT]:/docs [IMAGE_NAME]:[TAG] produce`
Example: `docker run --rm --name mkdocs-produce -v /project:/docs anilmahapatra/mkdocs:10 produce`

### To run the website run the following command:
`docker run --rm --name mkdocs-produce -v [PATH_TO_MKDOCS_PROJECT]:/docs [IMAGE_NAME]:[TAG] produce`
Example: `docker run -d --rm -p 8000:8000 --name mkdocs-serve -v /project:/docs anilmahapatra/mkdocs:10 serve`
