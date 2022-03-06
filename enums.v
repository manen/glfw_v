module glfw

// this should be all enums.
// this was all hand-converted from C.
//
// just saying

pub type Enum = int

pub const glfw_true = 1

pub const glfw_false = 0

pub const hat_centered = 0

pub const hat_up = 1

pub const hat_right = 2

pub const hat_down = 4

pub const hat_left = 8

pub const hat_right_up = hat_right | hat_down

pub const hat_right_down = hat_right | hat_down

pub const hat_left_up = hat_left | hat_up

pub const hat_left_down = hat_left | hat_down

pub const key_unknown = -1

pub const key_space = 32

pub const key_apostrophe = 39

pub const key_comma = 44

pub const key_minus = 45

pub const key_period = 46

pub const key_slash = 47

pub const key_0 = 48

pub const key_1 = 49

pub const key_2 = 50

pub const key_3 = 51

pub const key_4 = 52

pub const key_5 = 53

pub const key_6 = 54

pub const key_7 = 55

pub const key_8 = 56

pub const key_9 = 57

pub const key_semicolon = 59

pub const key_equal = 61

pub const key_a = 65

pub const key_b = 66

pub const key_c = 67

pub const key_d = 68

pub const key_e = 69

pub const key_f = 70

pub const key_g = 71

pub const key_h = 72

pub const key_i = 73

pub const key_j = 74

pub const key_k = 75

pub const key_l = 76

pub const key_m = 77

pub const key_n = 78

pub const key_o = 79

pub const key_p = 80

pub const key_q = 81

pub const key_r = 82

pub const key_s = 83

pub const key_t = 84

pub const key_u = 85

pub const key_v = 86

pub const key_w = 87

pub const key_x = 88

pub const key_y = 89

pub const key_z = 90

pub const key_left_bracket = 91

pub const key_backslash = 92

pub const key_right_bracket = 93

pub const key_grave_accent = 96

pub const key_world_1 = 161

pub const key_world_2 = 162

pub const key_escape = 256

pub const key_enter = 257

pub const key_tab = 258

pub const key_backspace = 259

pub const key_insert = 260

pub const key_delete = 261

pub const key_right = 262

pub const key_left = 263

pub const key_down = 264

pub const key_up = 265

pub const key_page_up = 266

pub const key_page_down = 267

pub const key_home = 268

pub const key_end = 269

pub const key_caps_lock = 280

pub const key_scroll_lock = 281

pub const key_num_lock = 282

pub const key_print_screen = 283

pub const key_pause = 284

pub const key_f1 = 290

pub const key_f2 = 291

pub const key_f3 = 292

pub const key_f4 = 293

pub const key_f5 = 294

pub const key_f6 = 295

pub const key_f7 = 296

pub const key_f8 = 297

pub const key_f9 = 298

pub const key_f10 = 299

pub const key_f11 = 300

pub const key_f12 = 301

pub const key_f13 = 302

pub const key_f14 = 303

pub const key_f15 = 304

pub const key_f16 = 305

pub const key_f17 = 306

pub const key_f18 = 307

pub const key_f19 = 308

pub const key_f20 = 309

pub const key_f21 = 310

pub const key_f22 = 311

pub const key_f23 = 312

pub const key_f24 = 313

pub const key_f25 = 314

pub const key_kp_0 = 320

pub const key_kp_1 = 321

pub const key_kp_2 = 322

pub const key_kp_3 = 323

pub const key_kp_4 = 324

pub const key_kp_5 = 325

pub const key_kp_6 = 326

pub const key_kp_7 = 327

pub const key_kp_8 = 328

pub const key_kp_9 = 329

pub const key_kp_decimal = 330

pub const key_kp_divide = 331

pub const key_kp_multiply = 332

pub const key_kp_subtract = 333

pub const key_kp_add = 334

pub const key_kp_enter = 335

pub const key_kp_equal = 336

pub const key_left_shift = 340

pub const key_left_control = 341

pub const key_left_alt = 342

pub const key_left_super = 343

pub const key_right_shift = 344

pub const key_right_control = 345

pub const key_right_alt = 346

pub const key_right_super = 347

pub const key_menu = 348

pub const key_last = key_menu

pub const mod_shift = 0x0001

pub const mod_control = 0x0002

pub const mod_alt = 0x0004

pub const mod_super = 0x0008

pub const mod_caps_lock = 0x0010

pub const mod_num_lock = 0x0020

pub const mouse_button_1 = 0

pub const mouse_button_2 = 1

pub const mouse_button_3 = 2

pub const mouse_button_4 = 3

pub const mouse_button_5 = 4

pub const mouse_button_6 = 5

pub const mouse_button_7 = 6

pub const mouse_button_8 = 7

pub const mouse_button_last = mouse_button_8

pub const mouse_button_left = mouse_button_1

pub const mouse_button_right = mouse_button_2

pub const mouse_button_middle = mouse_button_3

pub const joystick_1 = 0

pub const joystick_2 = 1

pub const joystick_3 = 2

pub const joystick_4 = 3

pub const joystick_5 = 4

pub const joystick_6 = 5

pub const joystick_7 = 6

pub const joystick_8 = 7

pub const joystick_9 = 8

pub const joystick_10 = 9

pub const joystick_11 = 10

pub const joystick_12 = 11

pub const joystick_13 = 12

pub const joystick_14 = 13

pub const joystick_15 = 14

pub const joystick_16 = 15

pub const joystick_last = joystick_16

pub const gamepad_button_a = 0

pub const gamepad_button_b = 1

pub const gamepad_button_x = 2

pub const gamepad_button_y = 3

pub const gamepad_button_left_bumper = 4

pub const gamepad_button_right_bumper = 5

pub const gamepad_button_back = 6

pub const gamepad_button_start = 7

pub const gamepad_button_guide = 8

pub const gamepad_button_left_thumb = 9

pub const gamepad_button_right_thumb = 10

pub const gamepad_button_dpad_up = 11

pub const gamepad_button_dpad_right = 12

pub const gamepad_button_dpad_down = 13

pub const gamepad_button_dpad_left = 14

pub const gamepad_button_last = gamepad_button_dpad_left

pub const gamepad_button_cross = gamepad_button_a

pub const gamepad_button_circle = gamepad_button_b

pub const gamepad_button_square = gamepad_button_x

pub const gamepad_button_triangle = gamepad_button_y

pub const gamepad_axis_left_x = 0

pub const gamepad_axis_left_y = 1

pub const gamepad_axis_right_x = 2

pub const gamepad_axis_right_y = 3

pub const gamepad_axis_left_trigger = 4

pub const gamepad_axis_right_trigger = 5

pub const gamepad_axis_last = gamepad_axis_right_trigger

pub const no_error = 0

pub const not_initialized = 0x00010001

pub const no_current_context = 0x00010002

pub const invalid_enum = 0x00010003

pub const invalid_value = 0x00010004

pub const out_of_memory = 0x00010005

pub const api_unavailable = 0x00010006

pub const version_unavailable = 0x00010007

pub const platform_error = 0x00010008

pub const format_unavailable = 0x00010009

pub const no_window_context = 0x0001000a

pub const focused = 0x00020001

pub const iconified = 0x00020002

pub const resizable = 0x00020003

pub const visible = 0x00020004

pub const decorated = 0x00020005

pub const auto_iconify = 0x00020006

pub const floating = 0x00020007

pub const maximized = 0x00020008

pub const center_cursor = 0x00020009

pub const transparent_framebuffer = 0x0002000a

pub const hovered = 0x0002000b

pub const focus_on_show = 0x0002000c

pub const red_bits = 0x00021001

pub const green_bits = 0x00021002

pub const blue_bits = 0x00021003

pub const alpha_bits = 0x00021004

pub const depth_bits = 0x00021005

pub const stencil_bits = 0x00021006

pub const accum_red_bits = 0x00021007

pub const accum_green_bits = 0x00021008

pub const accum_blue_bits = 0x00021009

pub const accum_alpha_bits = 0x0002100a

pub const aux_buffers = 0x0002100b

pub const stereo = 0x0002100c

pub const samples = 0x0002100d

pub const srgb_capable = 0x0002100e

pub const refresh_rate = 0x0002100f

pub const doublebuffer = 0x00021010

pub const client_api = 0x00022001

pub const context_version_major = 0x00022002

pub const context_version_minor = 0x00022003

pub const context_revision = 0x00022004

pub const context_robustness = 0x00022005

pub const opengl_forward_compat = 0x00022006

pub const opengl_debug_context = 0x00022007

pub const opengl_profile = 0x00022008

pub const context_release_behavior = 0x00022009

pub const context_no_error = 0x0002200a

pub const context_creation_api = 0x0002200b

pub const scale_to_monitor = 0x0002200c

pub const cocoa_retina_framebuffer = 0x00023001

pub const cocoa_frame_name = 0x00023002

pub const cocoa_graphics_switching = 0x00023003

pub const x11_class_name = 0x00024001

pub const x11_instance_name = 0x00024002

pub const no_api = 0

pub const opengl_api = 0x00030001

pub const opengl_es_api = 0x00030002

pub const no_robustness = 0

pub const no_reset_notification = 0x00031001

pub const lose_context_on_reset = 0x00031002

pub const opengl_any_profile = 0

pub const opengl_core_profile = 0x00032001

pub const opengl_compat_profile = 0x00032002

pub const cursor = 0x00033001

pub const sticky_keys = 0x00033002

pub const sticky_mouse_buttons = 0x00033003

pub const lock_key_mods = 0x00033004

pub const raw_mouse_motion = 0x00033005

pub const cursor_normal = 0x00034001

pub const cursor_hidden = 0x00034002

pub const cursor_disabled = 0x00034003

pub const any_release_behavior = 0

pub const release_behavior_flush = 0x00035001

pub const release_behavior_none = 0x00035002

pub const native_context_api = 0x00036001

pub const egl_context_api = 0x00036002

pub const osmesa_context_api = 0x00036003

pub const arrow_cursor = 0x00036001

pub const ibeam_cursor = 0x00036002

pub const crosshair_cursor = 0x00036003

pub const hand_cursor = 0x00036004

pub const hresize_cursor = 0x00036005

pub const vresize_cursor = 0x00036006

pub const connected = 0x00040001

pub const disconnected = 0x00040002

pub const joystick_hat_buttons = 0x00050001

pub const cocoa_chdir_resources = 0x00051001

pub const cocoa_menubar = 0x00051002

pub const dont_care = -1

pub const version_major = 3

pub const version_minor = 3

pub const version_revision = 6

pub const release = 0

pub const press = 1

pub const repeat = 2
