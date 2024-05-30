FROM node

WORKDIR /app 
# we set the workdir because subsequent commands will be done based on this dir
# because npm i would be done inside 

COPY package.json /app/

RUN npm i


COPY . ./
# or absolute path . /app

EXPOSE 80

CMD ["npm", "start"]

