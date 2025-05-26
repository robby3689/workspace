# Use a lightweight Node image
FROM node:18-alpine

WORKDIR /app

# Copy only necessary files
COPY package.json ./
RUN npm install --production

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
