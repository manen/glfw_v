module glfw

fn test_full() {
	init_glfw() or { panic(err) }
	window_hint(context_version_major, 3)
	window_hint(context_version_minor, 3)
	window_hint(opengl_profile, opengl_core_profile)

	win := create_window(800, 600, "yeah so i really have no clue what i'm doing") or { panic(err) }

	for !win.should_close() {
		poll_events()
		win.swap_buffers()
	}
}
