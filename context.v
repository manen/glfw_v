module glfw

fn C.glfwMakeContextCurrent(window voidptr)
fn C.glfwGetCurrentContext() voidptr
fn C.glfwSwapInterval(interval int)
fn C.glfwExtensionSupported(extension &char) int
fn C.glfwGetProcAddress(procname &char) voidptr

pub fn (window Window) make_context_current() {
	C.glfwMakeContextCurrent(window.ptr)
}

// getCurrentContext???

[inline]
pub fn swap_interval(interval int) {
	C.glfwSwapInterval(interval)
}

[inline]
pub fn extension_supported(extension string) bool {
	return C.glfwExtensionSupported(extension.str) == glfw_true
}

[inline]
pub fn get_proc_address(procname string) voidptr {
	return C.glfwGetProcAddress(procname.str)
}
