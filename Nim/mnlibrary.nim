const mn_lib* ="/Users/merhab/dev/gestion_27_3_2023/build/mnlibrary/libmnlibrary.dylib"
proc cstring_free*(str:cstring): void {.importc: "cstring_free_v1", dynlib: mn_lib}