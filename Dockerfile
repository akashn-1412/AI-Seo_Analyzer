# Use an official Node.js runtime as a parent image
FROM node:18

# Set the working directory in the container
WORKDIR /app

# Copy the app files into the container
COPY . /app

# Install app dependencies
# If you have a package.json file, this will install dependencies
RUN npm install express axios cheerio @google/generative-ai ejs dotenv

# Expose the port the app runs on
EXPOSE 3000

# Command to run the application
CMD ["node", "index.js"]
