# GLFW for V

Friendly GLFW bindings for V

```v
module main

import manen.glfw

fn main() {
  glfw.init_glfw()
  glfw.window_hint(glfw.context_version_major, 3)
  glfw.window_hint(glfw.context_version_minor, 3)
  glfw.window_hint(glfw.opengl_profile, glfw.opengl_core_profile)
  // glfw.window_hint(glfw.opengl_forward_compat, glfw.glfw_true) // uncomment if you're on mac

  win := glfw.create_window(800, 600, 'GLFW window') or { panic('Failed to open window') }

  for !win.should_close() {
    glfw.poll_events()
  }
}
```

## How do V functions map to the GLFW API?

If you see a C GLFW function in a tutorial for example, you might see something like `glfwWindowHint`, while in V, you'll see `glfw.window_hint`. So, how can you translate C function names into V function names?

1. Take away the `glfw` prefix
2. Turn `camelCame` into `snake_case`
3. If the function requires the window as an argument, use `window.name`, otherwise use `glfw.name`
4. Profit??

For example:

`glfwCreateWindow` -> `glfw.create_window`
`glfwSetWindowTitle` -> `glfw.set_title`
`glfwGetWindowSize` -> `glfw.get_size`

## How done are the bindings?

Not that much. For now, it's very early, and only supports window-related functions. So no input handling, or pretty much anything else. You can pretty much open a window and close it right now.
