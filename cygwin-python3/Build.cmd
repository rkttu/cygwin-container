@echo off
pushd "%~dp0"

docker build -t rkttu/cygwin-python3:1809-core -f Dockerfile-1809-core .
docker push rkttu/cygwin-python3:1809-core

docker build -t rkttu/cygwin-python3:1809-full -f Dockerfile-1809-full .
docker push rkttu/cygwin-python3:1809-full

:exit
popd
@echo on