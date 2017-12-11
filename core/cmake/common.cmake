cmake_minimum_required(VERSION 3.9)

if(MSVC)
    add_compile_options("/std:c++latest")
endif(MSVC)
add_definitions(-DBOOST_MOVE_USE_STANDARD_LIBRARY_MOVE) # std::move and boost::move won't interfere
add_definitions(-DWIN32_LEAN_AND_MEAN)                  # for boost::asio - reduces windows.h
add_definitions(-DELPP_WINSOCK2)                        # -//-

add_definitions(-DELPP_STL_LOGGING)                     # cotire doesn't see #define
add_definitions(-DELPP_LOG_STD_ARRAY)
add_definitions(-DELPP_LOG_UNORDERED_MAP)
add_definitions(-DELPP_LOG_UNORDERED_SET)

# set(CMAKE_VERBOSE_MAKEFILE ON)