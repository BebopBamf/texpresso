mupdf_dep = dependency('mupdf')

# frontend_sources = [
#   'driver.c',
#   'editor.c',
#   'engine_dvi.c',
#   'engine_pdf.c',
#   'fs.c',
#   'incdvi.c',
#   'json_parser.c',
#   'loader.c',
#   'logo.c',
#   'main.c',
#   'myabort.c',
#   'prot_parser.c',
#   'renderer.c',
#   'sexp_parser.c',
#   'sprotocol.c',
#   'state.c',
#   'synctex.c',
# ]

frontend_sources = [
  'editor.c',
  'engine_dvi.c',
  'engine_pdf.c',
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

static_bin_sources = files('driver.c', 'main.c', 'logo.c')

libfrontend = static_library(
  'texpresso',
  sources : frontend_sources,
  link_with : libmydvi,
  dependencies : [mupdf_dep],
  include_directories : [headers_dir, dvi_headers]
)
