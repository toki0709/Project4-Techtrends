FROM python:3.8

LABEL maintainer="Toki Tazwar"

# copy files from the host to the container filesystem. 
# For example, all the files in the current directory
# to the  `/app` directory in the container
COPY ./techtrends /app

#  defines the working directory within the container
WORKDIR /app

RUN pip install -r requirements.txt
RUN python init_db.py

EXPOSE 3111

CMD [ "python", "app.py" ]
