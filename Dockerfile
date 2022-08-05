FROM debian:sid

# Update the package list
RUN apt-get update

# Install gcc and g++
RUN apt-get install -y gcc g++

# Download sfml
RUN apt-get install -y libsfml-dev

# Install make
RUN apt-get install -y make

# Copy the source code to the build directory
COPY . /app

# Build the project
WORKDIR /app

# Create a .env file with the environment variables
RUN echo "EXEC_NAME=MyGame" > .env

# Build the example/default project
RUN make

# Auto build future projects
CMD ["make"]