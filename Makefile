YOLO_WEIGHTS_URL=https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights
BYTEDECO_OPENCV_URL=https://github.com/bytedeco/javacv/releases/download/1.5.4/javacv-platform-1.5.4-bin.zip
MM_NET_JAR=mmnet-0.0.2.jar
MAIN_CLASS="org.cpntools.simulator.extensions.server.DiscoveryServer"
OPENCV_URL=https://github.com/opencv/opencv/releases/download/4.4.0/opencv-4.4.0-vc14_vc15.exe

export PATH := $(shell pwd)/opencv/opencv/build/java/x64:$(PATH)

all: ./libs/javacv.jar ./HaarCascade/yolov4.weights-downloaded ./opencv/opencv/build/java/x64
	export _JAVA_OPTIONS="-Xmx6144m" && java -cp '${MM_NET_JAR};libs/*'  ${MAIN_CLASS}

./libs/javacv.jar:
	-mkdir -p libs
	-rm -rf downloaddir
	mkdir -p downloaddir
	while [ 1 ] ; do \
		wget -t 3 -T 15 ${BYTEDECO_OPENCV_URL} -O downloaddir/downloaded-zipfile-bin.zip && break; \
	done
	unzip downloaddir/downloaded-zipfile-bin.zip -d downloaddir
	mv downloaddir/*javacv*/* libs
	rm -rf downloaddir

./HaarCascade/yolov4.weights-downloaded:
	while [ 1 ] ; do \
		wget -t 3 -T 15 ${YOLO_WEIGHTS_URL} -O HaarCascade/yolov4.weights && touch HaarCascade/yolov4.weights-downloaded && break; \
	done

clean-libs:
	-rm -rf libs

clean-weights:
	-rm HaarCascade/yolov4.weights
	-rm HaarCascade/yolov4.weights-downloaded

clean-opencv:
	-rm -rf opencv

clean: clean-libs clean-weights clean-opencv

./opencv/opencv/build/java/x64: ./opencv/downloaded
	-chmod +x opencv/self_unzipping_opencv.exe
	opencv/self_unzipping_opencv.exe -o"./opencv" -y
	rm opencv/self_unzipping_opencv.exe

./opencv/downloaded:
	-mkdir opencv
	while [ 1 ] ; do \
		wget -t 3 -T 15 ${OPENCV_URL} -O opencv/self_unzipping_opencv.exe && touch opencv/downloaded && break; \
	done
