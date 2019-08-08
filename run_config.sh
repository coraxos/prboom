#export SDL_BUILD_LOCATION="/home/admin/Github/SDL/build2"
#export LIBC_LOC="/home/admin/Github/coraxOS/build/libc/"

export cppinc="-I $SDL_BUILD_LOCATION/include/ -I /usr/include/"
export CPPFLAGS="-m32 -g -O0 -fno-pic -fno-stack-protector -nostdlib -ffreestanding -fno-common -static -mno-sse $cppinc"

export ldlibs="-L $LIBC_LOC -L $SDL_BUILD_LOCATION/lib/"
export LDFLAGS="-m32 -g -fno-pic -fno-stack-protector -nostdlib -ffreestanding -fno-common -static $ldlibs"

export LIBS="-lSDL -lc -lgcc"

export SDL_CONFIG="$SDL_BUILD_LOCATION/bin/sdl-config"

./configure --build=i686-pc-x86-linux --without-net --without-mixer --host=x86 --disable-gl --disable-cpu-opt --enable-debug --prefix=$(pwd)/build