build:
	docker build -t android-build-trusty .

run:
	docker run -it --rm -v /G/aosp/:/src android-build-trusty
