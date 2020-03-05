FROM python:3.6-alpine
MAINTAINER Anil <anilmahapatra2012@gmail.com>

WORKDIR /usr/src/app

# Copying the required python modules to install mkdocs
COPY requirements.txt ./

# Copying entrypoint script to docs folder.
COPY entrypoint.sh ./

# Installing mkdocs
RUN pip install --no-cache-dir -r requirements.txt

WORKDIR /docs

EXPOSE 8000

ENTRYPOINT ["sh", "/usr/src/app/entrypoint.sh"]

