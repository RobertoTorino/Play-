# To run scripts:
# Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

# Go to the build directory
cd build

# Set Vulkan SDK environment
$env:VULKAN_SDK = "C:\VulkanSDK\1.4.309.0"
$env:PATH += ";$env:VULKAN_SDK\Bin"
$env:PKG_CONFIG_PATH = "C:\msys64\mingw64\lib\pkgconfig"

# Run CMake with desired configuration
cmake .. `
 -G "Visual Studio 17 2022" `
 -A x64 `
 -DCMAKE_PREFIX_PATH="C:\Qt\6.9.0\msvc2022_64" `
 -DCMAKE_TOOLCHAIN_FILE="C:\repos\vcpkg\scripts\buildsystems\vcpkg.cmake" `
 -DUSE_QT=YES `
 -DUSE_PTHREADS=OFF `
 -DZLIB_LIBRARY="C:\repos\vcpkg\installed\x64-windows\lib\zlib.lib" `
 -DZLIB_INCLUDE_DIR="C:\repos\vcpkg\installed\x64-windows\include" `
 -DICUUC_INCLUDE_DIR="C:\repos\vcpkg\installed\x64-windows\include" `
 -DBZIP2_LIBRARIES="C:\repos\vcpkg\installed\x64-windows\lib\bz2.lib" `
 -DBZIP2_INCLUDE_DIR="C:\repos\vcpkg\installed\x64-windows\include" `
 -DGLEW_LIBRARY="C:\repos\vcpkg\installed\x64-windows\lib\glew32.lib" `
 -DGLEW_INCLUDE_DIR="C:\repos\vcpkg\installed\x64-windows\include" `
 -DSQLite3_LIBRARY="C:\repos\vcpkg\installed\x64-windows\lib\sqlite3.lib" `
 -DSQLite3_INCLUDE_DIR="C:\repos\vcpkg\installed\x64-windows\include" `
 -DPKG_CONFIG_EXECUTABLE="C:\msys64\usr\bin\pkg-config.exe" `
 -DVulkan_LIBRARY="C:\VulkanSDK\1.4.309.0\Lib\vulkan-1.lib" `
 -DVulkan_INCLUDE_DIR="C:\VulkanSDK\1.4.309.0\Include"

cd ..

Read-Host -Prompt "Press Enter to exit"
