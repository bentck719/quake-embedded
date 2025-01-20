if [ -d "build" ]; then
      rm -rf build
fi

mkdir build && cd build
cmake -DCMAKE_TOOLCHAIN_FILE=../port/boards/rv32emu/toolchain.cmake \
      -DCMAKE_BUILD_TYPE=RELEASE -DBOARD_NAME=rv32emu ..
make
cp ./port/boards/rv32emu/quake ./