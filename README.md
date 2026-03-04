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
  If your files compiled on MacOS and don't compile within the container, if the Jasmin compiler says it can not find a file, check if the upper and lower case letters match.


# Dockerfile

The simple Dockerfile provided here is an example of how to build one for your project:

```
# Use the provided image
From jasmin_compiler

# This command originally sets the directory where the next command will run.
# It also creates a new directory path if it does not exist - here it creates
# the directory a within the existing usr/src/ path.
# This is useful to create distinct folders for several Jasmin projects at once.
WORKDIR usr/src/a/
COPY <my_local_jasmin_folder_path> usr/src/a/

# Following from above
WORKDIR usr/src/b/
COPY <my_local_jasmin_folder_path2> usr/src/b/

# Here we set the current working directory to usr/src/.
# When we ask Docker for a shell into the container, we start in the last set WORKDIR.
WORKDIR usr/src/
```

