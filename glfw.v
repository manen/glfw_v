module glfw

#include <GLFW/glfw3.h>
#pkgconfig glfw3

fn C.glfwInit() int

pub fn init_glfw() ? {
	if C.glfwInit() == 1 {
		return
	} else {
		return error('Failed to initialize GLFW')
	}
}
