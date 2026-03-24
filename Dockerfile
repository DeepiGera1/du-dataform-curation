FROM node:18-slim

WORKDIR /app

# Install Dataform CLI globally
RUN npm install -g @dataform/cli@2.9.0

# Copy package files
COPY package*.json ./

# Copy the rest of the project
COPY . .

# Grant execute permission to the shell script
RUN chmod +x dataform.sh

# Use ENTRYPOINT to make the container behave like an executable
# This ensures dataform.sh always runs when the container starts
ENTRYPOINT ["./dataform.sh"]