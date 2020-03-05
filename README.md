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

#### Created a Jenkinsfile with steps to build the docker image, create the container and test the container.

#### To maintain the images built by the Jenkis pipeline created a repository in DockerHub: anilmahapatra/mkdocs.

In the beginning of the Pipeline I have defined my docker registery and the credentials, therefore I can push the image I create using the jenkins pipeline there.

```pipeline {
  environment {
    registry = "anilmahapatra/mkdocs"
    registryCredential = 'dockerhub'
    dockerImage = ''
  }
```
##### You can add your own credntial to authinticate to your DockerHub registery:

 1. Navigate to Jenkins -> Credentials -> System -> Global credentials -> Add Credentials
 2. The add username, password, ID (ex: dockerhub) and click save.
 
### How to use the mkdockerize.sh?

mkdockerize.sh takes three arguments.

$1 - path to the mkdocs project directory where mkdocs.yml resides.

$2 - the tag of the mkdocs docker image you want to use.

$3 - you can choose between `produce` or `serve`. 

To produce website use: `sh mkdockerize.sh /home/project anilmahapatra/mkdocs:5 produce`

To run the website use: `sh mkdockerize.sh /home/project anilmahapatra/mkdocs:5 serve`
