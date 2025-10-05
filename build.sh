#!/usr/bin/env sh

export CC=clang
export CXX=clang++

# 2. Initial PGO instrumented build
meson setup build-pgo -Db_lto=true -Db_pgo=generate --buildtype=release
meson compile -C build-pgo

# 3. Run program to generate profile
#cp ./build/texpresso-tonic ./build-pgo/src/texpresso-tonic
#./build-pgo/src/texpresso test/simple.tex

# 4. Merge profile data
#llvm-profdata merge -output=default.profdata default.profraw

# meson setup build-release \
#   -Db_lto=true \
#   -Dc_args="-march=native" -Dc_link_args="-fuse-ld=mold" \
#   --buildtype=release


# 5. Optimized PGO + LTO build using mold linker
# meson setup build-release \
#   -Db_lto=true -Db_pgo=use -Dllvm-profdata=default.profdata \
#   -Dc_args="-march=native" -Dc_link_args="-fuse-ld=mold" \
#   --buildtype=release
# meson compile -C build-release

# meson configure \
#   -Db_lto=true -Db_pgo=use \
#   -Dc_args="-march=native" -Dc_link_args="-fuse-ld=mold" \
#   --buildtype=release
# meson compile
