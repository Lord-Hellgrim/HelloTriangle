CFLAGS = -std=c++17 -O2

LDFLAGS = -lglfw -lvulkan -ldl -lpthread -lX11 -lXxf86vm -lXrandr -lXi

HelloTriangle: main.cpp
	clang++ $(CFLAGS) -o HelloTriangle main.cpp $(LDFLAGS)

	.PHONY: test clean

	test: HelloTriangle
			./HelloTriangle

	clean:
		rm -f HelloTriangle