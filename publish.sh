#!/bin/bash

# for returning later to the main directory
ROOT_DIRECTORY=`pwd`

# read repository configuration
source $ROOT_DIRECTORY/vars

# for each enabled repository
for REPOSITORY in $REPOSITORIES; do
    # publish all enabled versions
    for TAG in $TAGS; do
      # some verbose
      echo $'\n\n'"--> Publishing $NAMESPACE:$TAG"$'\n'
      # publish
      docker push $NAMESPACE:$TAG
    done
done
