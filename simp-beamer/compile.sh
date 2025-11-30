#!/bin/bash
#这个文档是一个编译脚本，使用方法为：
# 在命令行输入“./compile”，如：
# -------------------------------------------------
# | yourname@host:~$ sudo chmod 755 ./compile     |%这条代码在linux环境必须运行一次，开放运行权限
# | yourname@host:~$ ./compile                    |
# -------------------------------------------------
xelatex -interaction=nonstopmode main

xelatex main

biber main

xelatex --synctex=1 main