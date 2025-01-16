cmake_minimum_required(VERSION 3.25)

find_package(cmake-bare REQUIRED PATHS node_modules/cmake-bare)

project(child_addon C)

add_bare_module(child_addon)

target_sources(
  ${child_addon}
  PRIVATE
    binding.c
)

link_bare_module(${child_addon} bare-addon SHARED)