# 一些配置方法

以下方法均在`mac`下实现。

## 环境变量
用命令`env`可以查看系统环境变量。

在`/etc/profile`下可以修改系统级的环境变量，另外在`~/.bash_profile`下可以修改用户级的环境变量，之后使用`source /etc/profile`或者`source ~/.bash_profile`使之立即生效。我现在倾向于后一种修改方式。修改代码举例：

```bash
PKG_CONFIG_PATH=/usr/local/opt/opencv3/lib/pkgconfig:$PKG_CONFIG_PATH
export PKG_CONFIG_PATH
```

特别的，对于`PATH`变量，在`/etc/paths`下存放着默认的值，在`/etc/paths.d/`目录下可以添加新的值，使用`Vim`等编辑器修改即可。

## CLion配置opencv
安装完`opencv`后，首先如上所述添加`PKG_CONFIG_PATH`变量，在`CMakeLists.txt`中添加如下代码段：

```cmake
cmake_minimum_required(VERSION 3.8)
project(ClionTest)

set(CMAKE_INCLUDE_CURRENT_DIR on)
set(CMAKE_AUTOMOC on)
set(CMAKE_AUTOUIC on)
set(CMAKE_CXX_STANDARD 11)

find_package(pkgconfig REQUIRED)

set(SOURCE_FILES main.cpp)
pkg_check_modules(OPENCV REQUIRED opencv)
include_directories(${OPENCV_INCLUDE_DIRS})
link_directories(${OPENCV_LIBRARY_DIRS})
add_executable(ClionTest ${SOURCE_FILES})
target_link_libraries(ClionTest PUBLIC ${OPENCV_LIBRARIES})

```
