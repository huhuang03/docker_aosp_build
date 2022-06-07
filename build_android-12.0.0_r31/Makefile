build_mac:
	docker build --build-arg userid=`id -u` --build-arg groupid=`id -g` --build-arg username=root -t android-12.0.0_r31 .

build_linux:
	docker build --build-arg userid=$(id -u) --build-arg groupid=$(id -g) --build-arg username=$(id -un) -t android-12.0.0_r31 .


build:
	docker build -t android-12.0.0_r31 .


run:
	docker run -it --rm --name android-12.0.0_r31 -v /Volumes/KINGSTON/:/android android-12.0.0_r31
