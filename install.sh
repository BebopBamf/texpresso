#!/usr/bin/env sh


#!/usr/bin/env bash
set -e

# --- Configuration ---
BUILD_DIR="build/release"
INSTALL_PREFIX="$HOME/.local"

# --- Compiler / linker ---
export CC=clang
export CXX=clang++
#export LD=ld.mold    # optional, in case you want to force mold globally

# --- Remove previous build if exists (optional) ---
rm -rf "$BUILD_DIR"

# --- Setup Meson build directory with release, LTO, and march=native ---
meson setup "$BUILD_DIR" \
  --buildtype=release \
  --prefix="$INSTALL_PREFIX" \
  -Db_lto=true \
  -Dc_args="-march=native" \
  -Dc_link_args="-fuse-ld=mold" \
  --reconfigure

# --- Compile the project ---
meson compile -C "$BUILD_DIR"

# --- Install executables and libraries ---
meson install -C "$BUILD_DIR"

cargo install --path ./tectonic --root $INSTALL_PREFIX --features external-harfbuzz

echo "Build and installation complete!"
echo "Executables installed to $INSTALL_PREFIX/bin"
