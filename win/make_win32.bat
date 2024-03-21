if "%1" == "" (
  set QJSNS=0
) else (
  echo "using v8_qjs namespace"
  set QJSNS=1
)

mkdir build & pushd build
cmake -S ..\CMakeLists.win.txt -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -DQJS_NS=${QJSNS} -G "Visual Studio 16 2019" -A Win32 ..
popd
cmake --build build --config Release
pause
