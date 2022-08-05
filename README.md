# SFML GCC
This tool is a docker image for setting up a SFML project with G++/GCC in its own environment.

## Usage
Firstly, you will need to build the docker image.
```bash
$ docker build -t sfml-gcc .
```

Then, you can use it to build your project:
```bash
$ docker run \
    -i -t \
    -v $(pwd):/app \
    sfml-gcc
```