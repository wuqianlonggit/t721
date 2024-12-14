extracflags="-Ofast -ffinite-loops -ffast-math -D_REENTRANT -falign-functions=64 -fomit-frame-pointer -fpic -pthread -flto -fuse-ld=lld -fno-stack-protector -march=armv8.4-a+crypto+sha2+crc"

./configure \
    CXXFLAGS="-funroll-loops -finline-functions -mllvm -enable-loop-distribute $extracflags -mtune=cortex-x1 -mtune=cortex-a78 -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize" \
    CFLAGS="-funroll-loops -finline-functions -mllvm -enable-loop-distribute $extracflags -mtune=cortex-x1 -mtune=cortex-a78  -Rpass-missed=loop-vectorize -Rpass-analysis=loop-vectorize" \
    CXX=clang++ CC=clang \
    LDFLAGS="-flto -Wl,-hugetlbfs-align"
