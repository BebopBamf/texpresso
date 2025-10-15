project('texpresso', 'c',
        meson_version : '>= 1.3.0',
        version : '0.2',
        default_options : ['warning_level=2']
)

sdl2_dep = dependency('sdl2')

subdir('src')

executable('texpresso',
  static_bin_sources,
  link_with : [libfrontend, libmydvi],
  dependencies : [sdl2_dep],
  include_directories : [headers_dir, dvi_headers],
  install : true
)
