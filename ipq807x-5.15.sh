#!/bin/bash
#添加额外软件包


#更新安装feeds
./scripts/feeds update -a
./scripts/feeds install -a
#设置环境变量
useVersionInfo=$(git show -s --date=short --format="编译前的最后一次[➦主源码](https://github.com/coolsnowwolf/lede)更新记录:<br/>更新人: %an<br/>更新时间: %cd<br/>更新内容: %s<br/>哈希值: %H")
echo "useVersionInfo=$useVersionInfo" >> $GITHUB_ENV
echo "DATE=$(date "+%Y年%m月%d日%H时%M分")" >> $GITHUB_ENV
echo "DATE1=$(date "+%Y.%m.%d")" >> $GITHUB_ENV
