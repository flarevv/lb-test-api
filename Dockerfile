FROM node:current-alpine
WORKDIR /app
ENV PATH /app/node_modules/.bin:$PATH
ENV TZ Asia/Hong_Kong
COPY . ./
RUN npm install
EXPOSE 3000 
CMD [ "npm", "start" ]