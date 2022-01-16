module glfw

#include <GLFW/glfw3.h>
#pkgconfig glfw3

fn C.glfwInit() int

pub fn init_glfw() int {
	return C.glfwInit()
}
