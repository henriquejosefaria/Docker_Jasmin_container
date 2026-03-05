## This container provides reviewers of Jasmin papers with a way of compiling Jasmin code.

# Instructions:

  1. Download the image and Dockerfile into the root directory of your project
  2. Load the image into your Docker ```docker load -i jasmin_compiler.tar```
  3. Create a new image using the Dockerfile and image provided: ```docker build --tag <name_of_your_new_image> .```  
       Note: Run this command if you use the Dockerfile to copy Jasmin files into your container.
  5. Run your new image in a container ```docker run -it <name_of_your_new_image> ```
  6. Start the opam environment with the jasmin compiler ```eval $(opam env)```
  7. You are all set. Navigate to your files and compile them.
  8. To move the compiled assembly code to your local machine, exit the container and run ```docker cp <container_name>:<path_tp_assembly_file> <path_local_machine>```

Notes:
  If your Jasmin files do not compile within the container and the Jasmin compiler says it cannot find a file, check whether the upper- and lowercase letters of your files match those of the imported files.


# Dockerfile

The simple Dockerfile provided here is an example of how to build one for your project:

```
# Use the provided image
FROM jasmin_compiler

# Creating a working directory within the container
WORKDIR /usr/src/path/to/files/in/container/

# Copy all files and subfolders in files/ into the created directory
COPY path/local/source/files/ /usr/src/path/to/files/in/container

# Creating a second working directory within the container
WORKDIR /usr/src/path/to/files/in/container2/

# Copy only the files within the files2 folder into the created directory
COPY path/local/source/files2/* /usr/src/path/to/files/in/container2/

# When we ask Docker to give us a shell inside the container, it sets it
# to the last working directory declared
WORKDIR /usr/src/
```

