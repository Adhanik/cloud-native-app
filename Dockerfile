# use the official python image as the base image
FROM python:3.9-slim-buster   

# Set the working dir in the container where the app will run 
WORKDIR /app  

# Copy the requirements file to the working dir
COPY requirements.txt .

# Install the required python packages
RUN pip3 install --no-cache-dir -r requirements.txt #this will install all the depedencies mentionined in requirements.txt

# Copy the app code to the working dir
COPY . .  

# Set the env variables for the Flask app
ENV FLASK_RUN_HOST=0.0.0.0

# Expose the port on which the flask app will run
EXPOSE 5000

#start the flask app
CMD ["flask", "run"]  
 

