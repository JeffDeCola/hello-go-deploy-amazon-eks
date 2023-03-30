#!/bin/sh -e
# hello-go-deploy-amazon-eks build.sh

echo " "

if [ "$1" = "-debug" ]
then
    echo "************************************************************************"
    echo "* build.sh -debug (START) **********************************************"
    echo "************************************************************************"
    # set -x enables a mode of the shell where all executed commands
    # are printed to the terminal.
    set -x
    echo " "
else
    echo "************************************************************************"
    echo "* build.sh (START) *****************************************************"
    echo "************************************************************************"
    echo " "
fi

echo "cd to where go code is"
echo "cd .."
cd ..
echo " "

echo "Build your docker image using Dockerfile"
echo "NOTE: The binary is built using this step"
echo "docker build -f build/Dockerfile -t jeffdecola/hello-go-deploy-amazon-eks ."
docker build -f build/Dockerfile -t jeffdecola/hello-go-deploy-amazon-eks .
echo " "

echo "Check Docker Image size"
echo "docker images jeffdecola/hello-go-deploy-amazon-eks:latest"
docker images jeffdecola/hello-go-deploy-amazon-eks:latest
echo " "

echo "Useful commands:"
echo "     docker run --name hello-go-deploy-amazon-eks -dit jeffdecola/hello-go-deploy-amazon-eks"
echo "     docker exec -i -t hello-go-deploy-amazon-eks /bin/bash"
echo "     docker logs hello-go-deploy-amazon-eks"
echo " "

echo "************************************************************************"
echo "* build.sh (END) *******************************************************"
echo "************************************************************************"
echo " "
