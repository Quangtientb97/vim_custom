
inorea csh_env_Ent <esc>:set formatoptions-=cro<cr>i
            \#!/usr/bin/csh<cr>
            \#--------------------------------------------------------------------<cr>
            \#  File name     : <esc>:r!basename %<cr>i<bs><esc>o
            \#  Function      : <empty><cr>
            \Author        : Tian<cr>
            \Email         : tientq@coasia.com<cr>
            \Created time  : <esc>:r !date '+\%Y-\%m-\%d \%H:\%M:\%S'<cr>i<bs><esc>o
            \#--------------------------------------------------------------------<cr>
            \set curfile  = `realpath $0`<cr>
            \set workdir  = `dirname $curfile`<cr>
            \<cr>
            \# number of argument: $#argv<cr>
            \echo $workdir<cr>
            \<esc>:set formatoptions+=cro<cr>


" CMAKE_C_COMPILER CMAKE_C_FLAGS
" cmake_minimum_required(VERSION 3.10)
"# Compiler
"set(CMAKE_C_COMPILER armclang)
"set(CMAKE_ASM_COMPILER armclang)
"# Flag
"set(CMAKE_C_FLAGS "--target=arm-arm-none-eabi -mcpu=cortex-m3")
"set(CMAKE_ASM_FLAGS "--target=arm-arm-none-eabi -mcpu=cortex-m3 -mthumb -O1")
"add_library(boot_lib STATIC startup.s)
"target_include_directories(boot_lib PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
"#target_compile_options(boot_lib PRIVATE $<$<COMPILE_LANGUAGE:ASM>:-m64>)
"
