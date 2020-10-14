# RUN THIS FROM THE ROOT OF THE REPO
gcc -o libnfd.so \
    src/nfd_gtk.c src/nfd_common.c \
    -Isrc/include `pkg-config gtk+-3.0 --cflags` \
    -L/usr/lib64 `pkg-config --libs gtk+-3.0` \
    -shared -m64 -s -fPIC -O2 -DNDEBUG