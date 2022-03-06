# GLFW for V

Friendly GLFW bindings for V

```v
module main

import manen.glfw

fn main() {
  glfw.init_glfw() or { panic('Failed to initialize GLFW') }
  glfw.window_hint(glfw.context_version_major, 3)
  glfw.window_hint(glfw.context_version_minor, 3)
  glfw.window_hint(glfw.opengl_profile, glfw.opengl_core_profile)
  // glfw.window_hint(glfw.opengl_forward_compat, glfw.glfw_true) // uncomment if you're on mac

  win := glfw.create_window(800, 600, 'GLFW window') or { panic('Failed to open window') }
  win.make_context_current()

  for !win.should_close() {
    glfw.poll_events()
    win.swap_buffers()
    // the expected output of this program is a responsive, yet completely black window.
    // to start drawing on the window we created, check out https://github.com/manen/gl_v
  }
}
```

The expected output of this program is a blank, yet responsive window. To start drawing on this window with OpenGL, check out [`gl_v`, the friendly OpenGL bindings](https://github.com/manen/gl_v).

## How do V functions map to the GLFW API?

If you see a C GLFW function in a tutorial for example, you might see something like `glfwWindowHint`, while in V, you'll see `glfw.window_hint`. So, how can you translate C function names into V function names?

1. Take away the `glfw` prefix
2. Turn `camelCame` into `snake_case`
3. If the function requires the window as an argument, use `window.name`, otherwise use `glfw.name`
4. Profit??

For example:

`glfwCreateWindow` -> `glfw.create_window` \
`glfwSetWindowTitle` -> `window.set_title` \
`glfwGetWindowSize` -> `window.get_size`

## How done are the bindings?

Sort of. It should be enough for apps and games that don't require too much.
