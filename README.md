
## jerryscript

This JavaScript engine for the Internet of Things.

License: Apache License

Download: `https://github.com/jerryscript-project/jerryscript.git`

Version: Commits on Oct 12 2020, Annotate test262-esnext-excludelist.xml (#4281) 

### JerryScript 2.4.0 HOWTO

```
cd src/jerryscript
mkdir build
cd build
cmake -G "Unix Makefiles" -DCMAKE_BUILD_TYPE=Release -DJERRY_GLOBAL_HEAP_SIZE=128 -DENABLE_LTO=OFF -DCMAKE_TOOLCHAIN_FILE:PATH="./cmake/toolchain_msrtos.cmake" ..
make -j8
```