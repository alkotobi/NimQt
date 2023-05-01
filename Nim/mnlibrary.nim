const mn_lib* ="libmnlibrary.dylib"
proc cstring_free*(str:cstring): void {.importc: "cstring_free_v1", dynlib: mn_lib}