all:image_pThreads image

image_pThreads:image_pThreads.c image.h
	gcc -lpthread -g image_pThreads.c -o image_pThreads -lm
image:image.c image.h
	gcc -g image.c -o image -lm
clean:
	rm -f image output.png