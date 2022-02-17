rm -rf build/wasm
mkdir build/wasm
source "$EMSDK/emsdk_env.sh"
emcc -c main.cpp -o build/wasm/main_wasm.o -s USE_SDL=2
emcc build/wasm/main_wasm.o -o build/wasm/main.wasm.html -s USE_SDL=2