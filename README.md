## This container provides reviewers of Jasmin papers with a way of compiling Jasmin code.

# Instructions:

  1. Download the image and Dockerfile into the root directory of your project
  2. Create a new image using the Dockerfile and image provided: ```docker build --tag <name_of_your_new_image> .```
       Note: Run this command if you use the Dockerfile to copy Jasmin files into your container.
  3. Run your new image in a container ```docker run -it <name_of_your_new_image> ```
  4. Start the opam environment with the jasmin compiler ```eval $(opam env)```
  5. You are all set. Navigate to your files and compile them.
  6. To move the compiled assembly code to your local machine, exit the container and run ```docker cp <container_name>:<path_assembly_files> <path_local_machine>```



# Dockerfile


