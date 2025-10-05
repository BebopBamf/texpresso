subdir('dvi')

cc = meson.get_compiler('c')
m_dep = cc.find_library('m')
#m_dep = cc.find_library('m', required : false)

mupdf_dep = dependency('mupdf')
sdl2_dep = dependency('sdl2')

dependencies = [
  m_dep,
  mupdf_dep,
  sdl2_dep,
]

# --- Shared sources ---
common_sources = [
  'editor.c',
  'engine_dvi.c',
  'engine_pdf.c',
  'engine_tex.c',
  'fs.c',
  'incdvi.c',
  'json_parser.c',
  'myabort.c',
  'prot_parser.c',
  'renderer.c',
  'sexp_parser.c',
  'sprotocol.c',
  'state.c',
  'synctex.c',
]

# --- Static library for shared logic ---
libcore = static_library(
  'texpresso_core',
  common_sources,
  include_directories: include_directories('.', 'dvi'),
  dependencies: [],
)

executable(
  'texpresso',
  ['driver.c', 'logo.c', 'main.c'],
  link_with: [libcore, libmydvi],
  include_directories: include_directories('.', 'dvi'),
  dependencies : dependencies,
  install : true,
)

