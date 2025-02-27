clang -c -g -gcodeview -o wslay-windows.lib -target x86_64-pc-windows -fuse-ld=llvm-lib -Wall wslay\wslay.c

mkdir libs
move wslay-windows.lib libs
