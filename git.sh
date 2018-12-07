#!/usr/bin/env bash

read -t 300 -p "请输入本次提交的相关内容:" name
echo -e "\n"
echo "用户名为:$name"

git add .
msg='123'
if [ -n "$1" ];then
msg="$1"
fi
git commit -m "$name"
git pull
git push
