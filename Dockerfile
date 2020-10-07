# this indicates the version of the node image you wanna use. i.e Use the version of this node image. 
FROM node:12.16.3 

# Tells Docker to create this directory such that subsequent commands will use the directory. 
WORKDIR /app    


# Setting environment variable env and we name the variable PORT  then assign 80 to. Ipso facto, environment variables can then be accessed by any processes that are running inside your image 

ENV PORT 80    

# Copy our package.json into the /code directory we created. It tells node what modules we wanna use. 
COPY package.json  /code/package.json  

# To install the dependencies the app needs inside of the Image.

RUN yarn add 

# It copies everything in the local directory into the image in the code directory */
COPY . /app

# To navigate the application's entry point and run the image. 

CMD ["yarn", "start"]   
