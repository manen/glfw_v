module glfw

fn C.glfwDefaultWindowHints()
fn C.glfwWindowHint(hint int, val int)
fn C.glfwWindowHintString(hint int, val &char)
fn C.glfwCreateWindow(width int, height int, title &char, monitor voidptr, share voidptr) voidptr
fn C.glfwDestroyWindow(window voidptr)
fn C.glfwWindowShouldClose(window voidptr) int
fn C.glfwSetWindowShouldClose(window voidptr, val int)
fn C.glfwSetWindowTitle(window voidptr, title &char)
fn C.glfwSetWindowIcon(window voidptr, count int, images voidptr)
fn C.glfwGetWindowPos(window voidptr, xpos &int, ypos &int)
fn C.glfwSetWindowPos(window voidptr, xpos int, ypos int)
fn C.glfwGetWindowSize(window voidptr, width &int, height &int)
fn C.glfwSetWindowSizeLimits(window voidptr, minwidth int, minheight int, maxwidth int, maxheight int)
fn C.glfwSetWindowAspectRatio(window voidptr, number int, denom int)
fn C.glfwSetWindowSize(window voidptr, width int, height int)
fn C.glfwGetFramebufferSize(window voidptr, width &int, height &int)
fn C.glfwGetWindowFrameSize(window voidptr, left &int, top &int, right &int, bottom &int)
fn C.glfwGetWindowContentScale(window voidptr, xscale &f32, yscale &f32)
fn C.glfwGetWindowOpacity(window voidptr) f32
fn C.glfwSetWindowOpacity(window voidptr, opacity f32)
fn C.glfwIconifyWindow(window voidptr)
fn C.glfwRestoreWindow(window voidptr)
fn C.glfwMaximizeWindow(window voidptr)
fn C.glfwShowWindow(window voidptr)
fn C.glfwHideWindow(window voidptr)
fn C.glfwFocusWindow(window voidptr)
fn C.glfwRequestWindowAttention(window voidptr)
fn C.glfwGetWindowMonitor(window voidptr) voidptr
fn C.glfwSetWindowMonitor(window voidptr, monitor voidptr, xpos int, ypos int, width int, height int, refreshRate int)
fn C.glfwGetWindowAttrib(window voidptr, attrib int) int
fn C.glfwSetWindowAttrib(window voidptr, attrib int, val int)
fn C.glfwSetWindowUserPointer(window voidptr, pointer voidptr)
fn C.glfwGetWindowUserPointer(window voidptr) voidptr
fn C.glfwSetWindowPosCallback(window voidptr, callback fn (window voidptr, xpos int, ypos int))
fn C.glfwSetWindowSizeCallback(window voidptr, callback fn (window voidptr, width int, height int))
fn C.glfwSetWindowCloseCallback(window voidptr, callback fn (window voidptr))
fn C.glfwSetWindowRefreshCallback(window voidptr, callback fn (window voidptr))
fn C.glfwSetWindowFocusCallback(window voidptr, callback fn (window voidptr, focused int))
fn C.glfwSetWindowIconifyCallback(window voidptr, callback fn (window voidptr, iconified int))
fn C.glfwSetWindowMaximizeCallback(window voidptr, callback fn (window voidptr, maximized int))
fn C.glfwSetFramebufferSizeCallback(window voidptr, callback fn (window voidptr, width int, height int))
fn C.glfwSetWindowContentScaleCallback(window voidptr, callback fn (window voidptr, xscale f32, yscale f32))
fn C.glfwPollEvents()
fn C.glfwWaitEvents()
fn C.glfwWaitEventsTimeout(timeout f64)
fn C.glfwPostEmptyEvent()
fn C.glfwSwapBuffers(window voidptr)

[inline]
pub fn default_window_hints() {
	C.glfwDefaultWindowHints()
}

[inline]
pub fn window_hint(hint Enum, val Enum) {
	C.glfwWindowHint(hint, val)
}

[inline]
pub fn window_hint_string(hint Enum, val string) {
	C.glfwWindowHintString(hint, &char(val.str))
}

pub struct Window {
	ptr voidptr
}

// TODO monitor, share
pub fn create_window(width int, height int, title string) ?Window {
	ptr := C.glfwCreateWindow(width, height, &char(title.str), voidptr(0), voidptr(0))
	if ptr == voidptr(0) {
		return error('Failed to create GLFW window')
	}

	return Window{ptr}
}

[inline]
pub fn (window Window) destroy() {
	C.glfwDestroyWindow(window.ptr)
}

[inline]
pub fn (window Window) should_close() bool {
	return C.glfwWindowShouldClose(window.ptr) != 0
}

[inline]
pub fn (window Window) set_should_close(val bool) {
	C.glfwSetWindowShouldClose(window.ptr, int(val))
}

[inline]
pub fn (window Window) set_title(title string) {
	C.glfwSetWindowTitle(window.ptr, &char(title.str))
}

// TODO glfwSetWindowIcon

pub fn (window Window) get_pos() (int, int) {
	x, y := 0, 0

	C.glfwGetWindowPos(window.ptr, &x, &y)

	return x, y
}

[inline]
pub fn (window Window) set_pos(pos_x int, pos_y int) {
	C.glfwSetWindowPos(window.ptr, pos_x, pos_y)
}

pub fn (window Window) get_size() (int, int) {
	width, height := 0, 0

	C.glfwGetWindowSize(window.ptr, &width, &height)

	return width, height
}

[inline]
pub fn (window Window) set_size_limits(min_width int, min_height int, max_width int, max_height int) {
	C.glfwSetWindowSizeLimits(window.ptr, min_height, min_height, max_width, max_height)
}

[inline]
pub fn (window Window) set_aspect_ratio(number int, denom int) {
	C.glfwSetWindowAspectRatio(window.ptr, number, denom)
}

[inline]
pub fn (window Window) set_size(width int, height int) {
	C.glfwSetWindowSize(window.ptr, width, height)
}

pub fn (window Window) get_framebuffer_size() (int, int) {
	width, height := 0, 0

	C.glfwGetFramebufferSize(window.ptr, &width, &height)

	return width, height
}

pub fn (window Window) get_frame_size() (int, int, int, int) {
	left, top, right, bottom := 0, 0, 0, 0

	C.glfwGetWindowFrameSize(window.ptr, &left, &top, &right, &bottom)

	return left, top, right, bottom
}

pub fn (window Window) get_content_scale() (f32, f32) {
	x, y := f32(0), f32(0)

	C.glfwGetWindowContentScale(window.ptr, &x, &y)

	return x, y
}

[inline]
pub fn (window Window) get_opacity() f32 {
	return C.glfwGetWindowOpacity(window.ptr)
}

[inline]
pub fn (window Window) set_opacity(opacity f32) {
	C.glfwSetWindowOpacity(window.ptr, opacity)
}

[inline]
pub fn (window Window) iconify() {
	C.glfwIconifyWindow(window.ptr)
}

[inline]
pub fn (window Window) restore() {
	C.glfwRestoreWindow(window.ptr)
}

[inline]
pub fn (window Window) maximize() {
	C.glfwMaximizeWindow(window.ptr)
}

[inline]
pub fn (window Window) show() {
	C.glfwShowWindow(window.ptr)
}

[inline]
pub fn (window Window) hide() {
	C.glfwHideWindow(window.ptr)
}

[inline]
pub fn (window Window) focus() {
	C.glfwFocusWindow(window.ptr)
}

[inline]
pub fn (window Window) request_attention() {
	C.glfwRequestWindowAttention(window.ptr)
}

// TODO monitor

[inline]
pub fn (window Window) get_attrib(attrib Enum) Enum {
	return C.glfwGetWindowAttrib(window.ptr, attrib)
}

[inline]
pub fn (window Window) set_attrib(attrib Enum, val Enum) {
	C.glfwSetWindowAttrib(window.ptr, attrib, val)
}

[inline]
pub fn (window Window) swap_buffers() {
	C.glfwSwapBuffers(window.ptr)
}

// TODO figure out if we want user pointers or whatever

// TODO figure out a memory-safe way to do callbacks

[inline]
pub fn poll_events() {
	C.glfwPollEvents()
}

[inline]
pub fn wait_events() {
	C.glfwWaitEvents()
}

[inline]
pub fn wait_events_timeout(timeout f64) {
	C.glfwWaitEventsTimeout(timeout)
}

[inline]
pub fn post_empty_event() {
	C.glfwPostEmptyEvent()
}
