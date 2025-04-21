# Use official Node.js
FROM node:23.11.0

# Install yarn
# RUN curl -o- -L https://yarnpkg.com/install.sh | bash

# Copy files
COPY package.json .
COPY yarn.lock .

# Install dependencies  after copying package.json for optimize cache
RUN yarn install

# Copy files rest of the files
COPY index.js .

# Start app on port 8000
EXPOSE 8000
CMD node index.js

