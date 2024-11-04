copy /y ..\build\libquickjs.dll.a ..\build\libquickjs.dll.lib
mkdir build & pushd build
cmake -DMD=ON -DCMAKE_VERBOSE_MAKEFILE:BOOL=ON -DWIN_DLL=1 -G "Visual Studio 17 2022" -A x64 ..
popd
cmake --build build --config Release
pause
