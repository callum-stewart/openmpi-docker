# Quickstart
NOTE: you do not need to clone this repo to follow the quickstart.

1. Make sure that you have Docker installed. Install instructions are [here](https://docs.docker.com/get-docker/)
1. `cd` into the directory containing your code and run `docker run --rm -it -v ${PWD}:/app callumstewart/openmpi:4.1.2`

This should drop you into in a bash shell in an instance of Ubuntu 20.04 with OpenMPI-4.1.2 installed.
If you run `ls` you should see your code, which you can compile with `mpicc <FILENAME> -o <BINARY_NAME>`, as per the tutorials.
You can edit the code files in your normal text editor and any changes made will be seen by your docker container automatically, no need to restart the container.

# Build the image
If you would like to build this image, you can do the following.

```bash
git clone https://github.com/callum-stewart/openmpi-docker
cd openmpi-docker
docker build . -t <IMAGE_NAME>
```

You would then run this command to start the bash shell (same as above in the quickstart except the image name is changed)

```
docker run --rm -it -v ${PWD}:/app <IMAGE_NAME>
```
