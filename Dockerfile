# A dockerfile must always start by importing the base image.
FROM python:latest

# In order to launch our python code, we must import it into our image.
# We use the keyword 'COPY' to do that.
# The first parameter 'main.py' is the name of the file on the host.
# The second parameter '/' is the path where to put the file on the image.
# Here we put the file at the image root folder.

COPY main.py /

# We need to define the command to launch when we are going to run the image.
CMD [ "python", "./main.py" ]