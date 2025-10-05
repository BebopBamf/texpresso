# Sources corresponding to OBJECTS in Makefile
dvi_sources = files(
  'dvi_context.c',
  'dvi_interp.c',
  'dvi_prim.c',
  'dvi_special.c',
  'dvi_scratch.c',
  'dvi_fonttable.c',
  'dvi_resmanager.c',
  'tex_tfm.c',
  'tex_fontmap.c',
  'tex_vf.c',
  'tex_enc.c',
  'vstack.c',
  'pdf_lexer.c',
)

# External dependency (like pkg-config --cflags freetype2)
freetype_dep = dependency('freetype2')

# Build static library (equivalent to ar cr libmydvi.a ...)
libmydvi = static_library(
  'mydvi',
  dvi_sources,
  dependencies: [freetype_dep],
  install: true
)

# If you want to export headers
# install_headers(
#   'dvi_context.h',
#   'dvi_interp.h',
#   'dvi_prim.h',
#   # … list the rest …
#   subdir: 'mydvi'
# )
