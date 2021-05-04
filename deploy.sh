#!/usr/bin/env sh

# 当发生错误时中止脚本
set -e

# 构建
npm run build

# cd 到构建输出的目录下 
cd dist

# 部署到自定义域名，没有自定义域名可注释掉
# echo 'mkw223.github.io' > CNAME

git init
git add -A
git commit -m 'deploy'

# 部署到 https://<USERNAME>.github.io
git push -f git@github.com:mkw223/mkw2/.git master:gh-pages

# 部署到 https://<USERNAME>.github.io/<REPO>
git push -f git@github.com:mkw223/mkw223.github.io.git master

cd -

