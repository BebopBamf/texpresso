dvi_headers = include_directories('.')

dvi_sources = [
  'dvi_context.c',
  'dvi_fonttable.c',
  'dvi_interp.c',
  'dvi_prim.c',
  'dvi_resmanager.c',
  'dvi_scratch.c',
  'dvi_special.c',
  'pdf_lexer.c',
  'tex_enc.c',
  'tex_fontmap.c',
  'tex_tfm.c',
  'tex_vf.c',
  'vstack.c',
]

libmydvi = static_library(
  'mydvi',
  sources : dvi_sources,
  dependencies : [],
  include_directories : [headers_dir],
)
