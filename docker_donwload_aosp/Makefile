build_mac:
	docker build --build-arg userid=`id -u` --build-arg groupid=`id -g` --build-arg username=`id -un` -t aosp_download .

build_linux:
	docker build --build-arg userid=$(id -u) --build-arg groupid=$(id -g) --build-arg username=$(id -un) -t aosp_download .


build:
	docker build -t aosp_download .


run:
	docker run -it --rm --name aosp_download -v /Volumes/KINGSTON/:/android aosp_download

