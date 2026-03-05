############################################################################
# This container uses ubunto 26.04 image with opam and the jasmin compiler #
# For instruction on how to use it/tweak it for your own use go to:        #
# https://github.com/henriquejosefaria/Docker_Jasmin_container             #
############################################################################

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
