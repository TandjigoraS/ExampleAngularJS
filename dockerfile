FROM node:latest

# Add a work directory
WORKDIR /app
# Cache and Install dependencies

COPY package.json ./

RUN npm install 

COPY . .

# Expose port
EXPOSE 4200

CMD npm run start
