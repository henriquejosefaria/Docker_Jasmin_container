############################################################################
# This container uses ubunto 26.04 image with opam and the jasmin compiler #
# For instruction on how to use it/tweak it for your own use go to:        #
# https://github.com/henriquejosefaria/Docker_Jasmin_container             #
############################################################################

FROM jasmin_compiler

# COPY THE SLICED ARRAYS JASMIN FILES

WORKDIR /usr/src/new_keccak_small/picnic3l3-avx2/jasminCode/
COPY new_keccak_small/picnic3l3-avx2/jasminCode/ /usr/src/new_keccak_small/picnic3l3-avx2/jasminCode/

WORKDIR /usr/src/new_keccak_small/picnic3l5-avx2/jasminCode/
COPY new_keccak_small/picnic3l5-avx2/jasminCode/ /usr/src/new_keccak_small/picnic3l5-avx2/jasminCode/


WORKDIR /usr/src/old/picnic3l3-avx2/jasminCode/
COPY old/picnic3l3-avx2/jasminCode/ /usr/src/old/picnic3l3-avx2/jasminCode/

WORKDIR /usr/src/old/picnic3l5-avx2/jasminCode/
COPY old/picnic3l5-avx2/jasminCode/ /usr/src/old/picnic3l5-avx2/jasminCode/


WORKDIR /usr/src/old_unrolled/picnic3l3-avx2/jasminCode/
COPY old_unrolled/picnic3l3-avx2/jasminCode/ /usr/src/old_unrolled/picnic3l3-avx2/jasminCode/

WORKDIR /usr/src/old_unrolled/picnic3l5-avx2/jasminCode/
COPY old_unrolled/picnic3l5-avx2/jasminCode/ /usr/src/old_unrolled/picnic3l5-avx2/jasminCode/

WORKDIR /usr/src/