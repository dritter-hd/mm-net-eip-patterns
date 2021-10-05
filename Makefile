YOLO_WEIGHTS_URL=https://github.com/AlexeyAB/darknet/releases/download/darknet_yolo_v3_optimal/yolov4.weights
OPENCV_URL=https://github.com/bytedeco/javacv/releases/download/1.5.4/javacv-platform-1.5.4-bin.zip
MM_NET_JAR=mmnet-0.0.1.jar
MAIN_CLASS="org.cpntools.simulator.extensions.server.DiscoveryServer"

all: ./libs/javacv.jar ./HaarCascade/yolov4.weights
	java -cp '${MM_NET_JAR}:libs/*'  ${MAIN_CLASS}

./libs/javacv.jar:
	-mkdir -p libs
	-rm -rf downloaddir
	mkdir -p downloaddir
	wget ${OPENCV_URL} -O downloaddir/downloaded-zipfile-bin.zip
	unzip downloaddir/downloaded-zipfile-bin.zip -d downloaddir
	mv downloaddir/*javacv*/* libs
	rm -rf downloaddir

./HaarCascade/yolov4.weights:
	wget ${YOLO_WEIGHTS_URL} -O HaarCascade/yolov4.weights

clean-libs:
	-rm -rf libs

clean-weights:
	-rm HaarCascade/yolov4.weights

clean: clean-libs clean-weights
