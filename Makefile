build_mac:
	docker build --build-arg userid=`id -u` --build-arg groupid=`id -g` --build-arg username=`id -un` -t android-build-trusty .

build_linux:
	docker build --build-arg userid=$(id -u) --build-arg groupid=$(id -g) --build-arg username=$(id -un) -t android-build-trusty .


build:
	docker build -t android-build-trusty .


run:
	docker run -it --rm --name android-build-trusty -v /Volumes/KINGSTON/:/android android-build-trusty
