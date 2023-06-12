FROM node:16-alpine
ENV PORT=8080
WORKDIR /app
RUN apk add nano
RUN apk add curl
LABEL project="public apis"
LABEL owner="RoxsRoss"
COPY ./ /app/
RUN npm install
EXPOSE 8080
CMD ["npm","start"]